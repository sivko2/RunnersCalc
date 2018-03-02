import bb.cascades 1.0

Page 
{
    property int age
    property double height
    property double weight
    property int restingHR
    property int averageHR
    property double distance
    property double time
    
        Container
        {
		    ListView 
		    {
		        dataModel: 
		            ArrayDataModel
		            {               
		                id: arrayModel           
		            }
		            
		        onCreationCompleted: 
		            {
		                arrayModel.append(["Body Mass Index", "Maximum Heart Rate", "Running Intensity", 
		                    "Running Statistics", "Burnt Calories", "Burnt Fat"]);
		            }
		            
		        onTriggered: 
		            {
		                if (indexPath == 0)
		                {
		                    bmiSheet.open();
		                }
		                else if (indexPath == 1)
		                {
		                    maxHRSheet.open();
		                }
		                else if (indexPath == 2)
		                {
		                    intenSheet.open();
		                }
		                else if (indexPath == 3)
		                {
		                    statSheet.open();
		                }
		                else if (indexPath == 4)
		                {
		                    calSheet.open();
		                }
		                else if (indexPath == 5)
		                {
		                    fatSheet.open();
		                }
		            }
		        
		        listItemComponents:
		        	[
	                    ListItemComponent
	                    {
	                        type: "item"
	                        
	                        StandardListItem
	                        {	                            
                                title: arrayModel
  	                        }
	                    }
		        	]
		    }
        }       
    
    paneProperties: 
        NavigationPaneProperties 
        {
	        backButton: 
	            ActionItem 
	            {
		            onTriggered: 
		                {
		                    navigationPane.pop();
		                }
	            }
        }
        
    attachedObjects: 
        [
			Sheet
			{            
			    id: bmiSheet
	            Page
	            {
	                id: bmiPage
	                
	                actionBarVisibility: ChromeVisibility.Visible
	 
					paneProperties: 
					    NavigationPaneProperties 
					    {
					        backButton: 
					            ActionItem 
					            {
						            onTriggered: 
						                {
						                    bmiSheet.close();
						                }
					            }
					    }
	                 
	                Container
	                {	                     
	                    ScrollView
	                    {
	                        Container
	                        {
	                            leftPadding: 10.0
	                            topPadding: 10.0
	                            bottomPadding: 10.0
	                            rightPadding: 10.0
	                            
                                Header
	                            {
	                                title: "Body Mass Index"
	                            }
	                            
	                            Label
	                            {
	                            }
	                            
	                            Label
	                            {
	                                id: bmiLabel
	                                multiline: true
	                            }
	                            
	                            Button
	                            {
	                                text: "Back"
	                                horizontalAlignment: HorizontalAlignment.Center
	                                
	                                onClicked: 
	                                    {
	                                        bmiSheet.close();
	                                    }
	                            }
	                             
	                        }
	                    }
	                }
                }
                
                onOpened: 
                    {
                        bmiLabel.text = bmi();
                    }
                    
                function bmi()
                {
                    var bmiText = "-";
                    var bmi = weight / ((height / 100) * (height / 100));
                    bmi = parseInt(10 * bmi);
                    bmi = bmi / 10;
                    if (bmi < 16)
				    {
		                bmiText = "Your BMI (Body Mass Index) is " + bmi + " and you are severely underweight.\n\nYou must start eating food high in calories.\n\n";
					}
					else if (bmi >= 16 && bmi < 18.5)
	 				{
						bmiText = "Your BMI (Body Mass Index) is " + bmi + " and you are underweight.\n\nYou must eat food high in calories to reach the normal BMI.\n\n ";
					}
					else if (bmi >= 18.5 && bmi < 25)
					{
						bmiText = "Your BMI (Body Mass Index) is " + bmi + " and your BMI is normal.\n\nCongratulations! Maintain your weight.\n\n";
					}
					else if (bmi >= 25 && bmi < 30)
					{
						bmiText = "Your BMI (Body Mass Index) is " + bmi + " and you are overweight.\n\nIt's time to start losing weight.\n\n";
					}
					else if (bmi >= 30)
					{
						bmiText = "Your BMI (Body Mass Index) is " + bmi + " and you are obese.\n\nYou must eat healthier food and start losing weight.\n\n";
					}
                     
                    return bmiText;
                }
            },
			Sheet
			{            
			    id: maxHRSheet
	            Page
	            {
	                id: maxHRPage
	                
	                actionBarVisibility: ChromeVisibility.Visible
	 
					paneProperties: 
					    NavigationPaneProperties 
					    {
					        backButton: 
					            ActionItem 
					            {
						            onTriggered: 
						                {
						                    maxHRSheet.close();
						                }
					            }
					    }
	                 
	                Container
	                {	                     
	                    ScrollView
	                    {
	                        Container
	                        {
	                            leftPadding: 10.0
	                            topPadding: 10.0
	                            bottomPadding: 10.0
	                            rightPadding: 10.0
	                            
                                Header
	                            {
	                                title: "Maximum Heart Rate"
	                            }
	                            
	                            Label
	                            {
	                            }
	                            
	                            Label
	                            {
	                                id: maxHRLabel
	                                multiline: true
	                            }
	                            
	                            Button
	                            {
	                                text: "Back"
	                                horizontalAlignment: HorizontalAlignment.Center
	                                
	                                onClicked: 
	                                    {
	                                        maxHRSheet.close();
	                                    }
	                            }
	                             
	                        }
	                    }
	                }
                }
                
                onOpened: 
                    {
                        maxHRLabel.text = maxiHR();
                    }
                    
                function maxiHR()
                {
                    var maxHR = parseInt(205.8 - age * 0.685);
                    var maxHRText = "Your maximum HR (Heart Rate) is " + maxHR + " BPM (Beats Per Minute), based on your age.\n\n";
                    return maxHRText;
                }
            },
			Sheet
			{            
			    id: intenSheet
	            Page
	            {
	                id: intenPage
	                
	                actionBarVisibility: ChromeVisibility.Visible
	 
					paneProperties: 
					    NavigationPaneProperties 
					    {
					        backButton: 
					            ActionItem 
					            {
						            onTriggered: 
						                {
						                    intenSheet.close();
						                }
					            }
					    }
	                 
	                Container
	                {	                     
	                    ScrollView
	                    {
	                        Container
	                        {
	                            leftPadding: 10.0
	                            topPadding: 10.0
	                            bottomPadding: 10.0
	                            rightPadding: 10.0
	                            
                                Header
	                            {
	                                title: "Running Intensity"
	                            }
	                            
	                            Label
	                            {
	                            }
	                            
	                            Label
	                            {
	                                id: intenLabel
	                                multiline: true
	                            }
	                            
	                            Button
	                            {
	                                text: "Back"
	                                horizontalAlignment: HorizontalAlignment.Center
	                                
	                                onClicked: 
	                                    {
	                                        intenSheet.close();
	                                    }
	                            }
	                             
	                        }
	                    }
	                }
                }
                
                onOpened: 
                    {
                        intenLabel.text = inten();
                    }
                    
                function inten()
                {
                    var maxHR = parseInt(205.8 - age * 0.685);
                    var intensity = ((averageHR - restingHR) / (maxHR - restingHR)) * 100;
                    var intText = "You were running with " + parseInt(intensity) + "% of your maximum intensity.\n\n";
                    return intText;
                }
            },
			Sheet
			{            
			    id: statSheet
	            Page
	            {
	                id: statPage
	                
	                actionBarVisibility: ChromeVisibility.Visible
	 
					paneProperties: 
					    NavigationPaneProperties 
					    {
					        backButton: 
					            ActionItem 
					            {
						            onTriggered: 
						                {
						                    intenSheet.close();
						                }
					            }
					    }
	                 
	                Container
	                {	                     
	                    ScrollView
	                    {
	                        Container
	                        {
	                            leftPadding: 10.0
	                            topPadding: 10.0
	                            bottomPadding: 10.0
	                            rightPadding: 10.0
	                            
                                Header
	                            {
	                                title: "Running Statistics"
	                            }
	                            
	                            Label
	                            {
	                            }
	                            
	                            Label
	                            {
	                                id: statLabel
	                                multiline: true
	                            }
	                            
	                            Button
	                            {
	                                text: "Back"
	                                horizontalAlignment: HorizontalAlignment.Center
	                                
	                                onClicked: 
	                                    {
	                                        statSheet.close();
	                                    }
	                            }
	                             
	                        }
	                    }
	                }
                }
                
                onOpened: 
                    {
                        statLabel.text = stat();
                    }
                    
                function stat()
                {
			        var pace = time / distance;
			        var minutePace = parseInt(pace);
			        var secondPace = parseInt((pace - minutePace) * 60);
			        var speed = parseInt(10 * distance / (time / 60)) / 10;
                    var statText = "Your running speed was " + speed + " kilometers per hour.\n\n" +
        			    "Your running pace was ";
        			if (minutePace > 1)
        			{
        				statText = statText + minutePace + " minutes "
        			}
        			else
        			{
        				statText = statText + minutePace + " minute "
        			}
        			if (secondPace > 1)
        			{
        				statText = statText + secondPace + " seconds "
        			}
        			else
        			{
        				statText = statText + secondPace + " second "
        			}
        			statText = statText + "per kilometer.\n\n";
        
                    return statText;
                }
            },
			Sheet
			{            
			    id: calSheet
	            Page
	            {
	                id: calPage
	                
	                actionBarVisibility: ChromeVisibility.Visible
	 
					paneProperties: 
					    NavigationPaneProperties 
					    {
					        backButton: 
					            ActionItem 
					            {
						            onTriggered: 
						                {
						                    calSheet.close();
						                }
					            }
					    }
	                 
	                Container
	                {	                     
	                    ScrollView
	                    {
	                        Container
	                        {
	                            leftPadding: 10.0
	                            topPadding: 10.0
	                            bottomPadding: 10.0
	                            rightPadding: 10.0
	                            
                                Header
	                            {
	                                title: "Burnt Calories"
	                            }
	                            
	                            Label
	                            {
	                            }
	                            
	                            Label
	                            {
	                                id: calLabel
	                                multiline: true
	                            }
	                            
	                            Button
	                            {
	                                text: "Back"
	                                horizontalAlignment: HorizontalAlignment.Center
	                                
	                                onClicked: 
	                                    {
	                                        calSheet.close();
	                                    }
	                            }
	                             
	                        }
	                    }
	                }
                }
                
                onOpened: 
                    {
                        calLabel.text = cal();
                    }
                    
                function cal()
                {
			        var speed = parseInt(10 * distance / (time / 60)) / 10;
			        var calories = parseInt((speed * 1000 / 60 + 17.5) * time * weight / 1000);
                    var calText = "During your run, you burnt " + calories + " kcal.\n\n";
        
                    return calText;
                }
            },
			Sheet
			{            
			    id: fatSheet
	            Page
	            {
	                id: fatPage
	                
	                actionBarVisibility: ChromeVisibility.Visible
	 
					paneProperties: 
					    NavigationPaneProperties 
					    {
					        backButton: 
					            ActionItem 
					            {
						            onTriggered: 
						                {
						                    fatSheet.close();
						                }
					            }
					    }
	                 
	                Container
	                {	                     
	                    ScrollView
	                    {
	                        Container
	                        {
	                            leftPadding: 10.0
	                            topPadding: 10.0
	                            bottomPadding: 10.0
	                            rightPadding: 10.0
	                            
                                Header
	                            {
	                                title: "Burnt Fat"
	                            }
	                            
	                            Label
	                            {
	                            }
	                            
	                            Label
	                            {
	                                id: fatLabel
	                                multiline: true
	                            }
	                            
	                            Button
	                            {
	                                text: "Back"
	                                horizontalAlignment: HorizontalAlignment.Center
	                                
	                                onClicked: 
	                                    {
	                                        fatSheet.close();
	                                    }
	                            }
	                             
	                        }
	                    }
	                }
                }
                
                onOpened: 
                    {
                        fatLabel.text = fat();
                    }
                    
                function fat()
                {
			        var speed = parseInt(10 * distance / (time / 60)) / 10;
                    var maxHR = parseInt(205.8 - age * 0.685);
                    var intensity = ((averageHR - restingHR) / (maxHR - restingHR)) * 100;
					var fatRatio = 100;					
					if (intensity > 100)
					{
						fatRatio = 0;
					}
					else if (intensity > 80)
					{
						fatRatio = 10 - (intensity - 80) * 0.5;
					}
					else if (intensity > 45)
					{
						fatRatio = 100 - (intensity - 45) * (90 / 35);
					}
			        var calories = parseInt((speed * 1000 / 60 + 17.5) * time * weight / 1000);
					var fat = parseInt(fatRatio / 100 * calories / 9.4);
					var carbo = parseInt((100 - fatRatio) / 100 * calories / 4.2);
                    var fatText = "During your run, " + (parseInt(10 * fatRatio) / 10) + "% of your energy came from burning body fat.\n\n" +
                        "You lost " + fat + " grams of body fat and burnt " + carbo + " grams of carbohydrates.\n\n";
        
                    return fatText;
                }
            }
        ]
}
