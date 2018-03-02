import bb.cascades 1.0
import bb.system 1.0
import bb.cascades.advertisement 1.0

NavigationPane 
{
    id: navigationPane
    
    attachedObjects: 
        [
            SystemToast 
            {
                id: aboutToast
                body: "Runner's Calculator 2\n©2012, Pronic, Meselina Ponikvar Verhovsek s.p.\n\n"
            },    
            CalcPage 
            {
	            id: calcPage
            }
        ]
    

    Page 
    {
        ScrollView
        {
	        Container 
	        {
	            leftPadding: 20.0
	            rightPadding: 20.0
	            bottomPadding: 20.0
	            topPadding: 20.0

	            layout: 
	                StackLayout 
	                {
	                }
	            
	            Header
	            {
	                title: "Runner's Calculator"
	                subtitle: "Loose to win"
	            }
	            
                Banner 
				{
                    zoneId: 117145
                    refreshRate: 60
                    preferredWidth: 320
                    preferredHeight: 50
                    transitionsEnabled: true
                    placeHolderURL: "asset:///placeholder_728x90.png"
                    backgroundColor: Color.Black
                    borderColor: Color.Black
                    borderWidth: 2
                    horizontalAlignment: HorizontalAlignment.Center
                }

	            Label
	            {
	                text: "Age in years:"
	                
	                animations: 
	                    [
	                        TranslateTransition 
	                        {
	                            id: anime
	                            toX: 0
	                            duration: 2000
                            }
                        ]
                        
                    onCreationCompleted: 
                        {
//                            translationX = 800;
//                            anime.play();
                        }
	            }
	            
	            TextField 
	            {
	                id: ageField
	                text: "35"
	                clearButtonVisible: true
	                inputMode: TextFieldInputMode.Pin
	                verticalAlignment: VerticalAlignment.Fill
                }
            
	            Label
	            {
	            }
	            
	            Label
	            {
	                text: "Height in cm:"
	            }
	            
	            TextField 
	            {
	                id: heightField
	                text: "180"
	                clearButtonVisible: true
	                inputMode: TextFieldInputMode.NumbersAndPunctuation
	                verticalAlignment: VerticalAlignment.Fill
                }
            
	            Label
	            {
	            }
	            
	            Label
	            {
	                text: "Weight in kg:"
	            }
	            
	            TextField 
	            {
	                id: weightField
	                text: "75"
	                clearButtonVisible: true
	                inputMode: TextFieldInputMode.NumbersAndPunctuation
	                verticalAlignment: VerticalAlignment.Fill
                }
            
	            Label
	            {
	            }
	            
	            Label
	            {
	                text: "Resting HR in BPM:"
	            }
	            
	            TextField 
	            {
	                id: bpmField
	                text: "70"
	                clearButtonVisible: true
	                inputMode: TextFieldInputMode.Pin
	                verticalAlignment: VerticalAlignment.Fill
                }
            
	            Label
	            {
	            }	            
	            
	            Label
	            {
	                text: "Average running HR in BPM:"
	            }
	            
	            TextField 
	            {
	                id: avgField
	                text: "150"
	                clearButtonVisible: true
	                inputMode: TextFieldInputMode.Pin
	                verticalAlignment: VerticalAlignment.Fill
                }
            
	            Label
	            {
	            }
	            
	            Label
	            {
	                text: "Distance in km:"
	            }
	            
	            TextField 
	            {
	                id: distField
	                text: "1"
	                clearButtonVisible: true
	                inputMode: TextFieldInputMode.NumbersAndPunctuation
	                verticalAlignment: VerticalAlignment.Fill
                }
            
	            Label
	            {
	            }
	            
	            Label
	            {
	                text: "Time in minutes:"
	            }
	            
	            TextField 
	            {
	                id: timeField
	                text: "1"
	                clearButtonVisible: true
	                inputMode: TextFieldInputMode.NumbersAndPunctuation
	                verticalAlignment: VerticalAlignment.Fill
                }
            
	            Label
	            {
	            }
	            
	        }
	    }
	    
	    actions: 
	        [
	            ActionItem 
	            {
                    title: "Calculate"
                    imageSource: "asset:///images/run.png"
                    ActionBar.placement: ActionBarPlacement.OnBar
                    
                    onTriggered: 
                        {
                            calcPage.age = parseInt(ageField.text);
                            calcPage.height = parseFloat(heightField.text);
                            calcPage.weight = parseFloat(weightField.text);
                            calcPage.restingHR = parseInt(bpmField.text);
                            calcPage.averageHR = parseInt(avgField.text);
                            calcPage.distance = parseFloat(distField.text);
                            calcPage.time = parseFloat(timeField.text);
 		                    navigationPane.push(calcPage);
                        }
                },
	            ActionItem 
	            {
	                title: "About"
	                imageSource: "asset:///images/info.png"
	                
	                onTriggered: 
	                    {
	                        aboutToast.show();
	                    }
	            }
	        ]
	        
    }
    
}
