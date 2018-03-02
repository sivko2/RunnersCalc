// Navigation pane project template
#include "RunnersCalc.hpp"

#include <bb/cascades/Application>

#include <QLocale>
#include <QTranslator>
#include <Qt/qdeclarativedebug.h>
#include <bb/cascades/advertisement/Banner>

using namespace bb::cascades;

Q_DECL_EXPORT int main(int argc, char **argv)
{
    // this is where the server is started etc
    Application app(argc, argv);

    qmlRegisterType<bb::cascades::advertisement::Banner>("bb.cascades.advertisement", 1, 0, "Banner");

    // localization support
    QTranslator translator;
    QString locale_string = QLocale().name();
    QString filename = QString( "RunnersCalc_%1" ).arg( locale_string );
    if (translator.load(filename, "app/native/qm")) {
        app.installTranslator( &translator );
    }

    // create the application pane object to init UI etc.
    new RunnersCalc(&app);

    // we complete the transaction started in the app constructor and start the client event loop here
    return Application::exec();
    // when loop is exited the Application deletes the scene which deletes all its children (per qt rules for children)
}
