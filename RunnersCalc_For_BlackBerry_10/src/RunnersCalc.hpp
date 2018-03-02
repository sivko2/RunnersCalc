// Navigation pane project template
#ifndef RunnersCalc_HPP_
#define RunnersCalc_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class RunnersCalc : public QObject
{
    Q_OBJECT
public:
    RunnersCalc(bb::cascades::Application *app);
    virtual ~RunnersCalc() {}
};

#endif /* RunnersCalc_HPP_ */