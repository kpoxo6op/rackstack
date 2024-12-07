use <../tray/tray.scad>

/*
  Custom tray for a miniPC with dimensions 11.9x11.9x2.4 cm.
  Please ensure the correct rack frame dimensions are set in rackFrame.scad.
*/

bottomScrewTray(
    u = 1,                  
    trayWidth = 150,          
    trayDepth = 120,      
    trayThickness = 3,       
    frontLipHeight = 3,     
    backLipHeight = 1,         
    frontThickness = 3,        
    sideThickness = 3,       
    mountPointType = "m3",     
    sideSupport = true,
    trayLeftPadding = 15,
    mountPointElevation = 0,
    mountPoints = [
    [10, 90], [20, 90], [30, 90], [40, 90], [50, 90], [60, 90], [70, 90], [80, 90], [90, 90], [100, 90], [110, 90], [120, 90], [130, 90], 
    [15, 95], [25, 95], [35, 95], [45, 95], [55, 95], [65, 95], [75, 95], [85, 95], [95, 95], [105, 95], [115, 95], [125, 95], [135, 95],
    [10, 100], [20, 100], [30, 100], [40, 100], [50, 100], [60, 100], [70, 100], [80, 100], [90, 100], [100, 100], [110, 100], [120, 100], [130, 100]    
    ]

);


/*
  This tray setup follows the structure used in other trays (e.g., mele-quieter-tray.scad).
  It is customized to fit a miniPC with dimensions 11.9x11.9x2.4 cm.
*/
