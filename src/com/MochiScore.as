package com
{
    import flash.events.Event;
    import flash.display.MovieClip;
    import flash.display.Sprite;
    import mx.preloaders.DownloadProgressBar;
    import mx.core.Application;
    
	import mochi.as3.*;

    // must be dynamic!!
    public dynamic class MochiScore extends DownloadProgressBar {
        /*
            MochiPreloader extends DownloadProgressBar here for simplicity.
            You can create more sophisticated preloaders using 
            mx.preloaders.IPreloaderDisplay.
        */
        private var _clip:MovieClip;
        private var GAME_OPTIONS:Object;
        
        public function MochiScore() 
        {
            //super();
            _clip = new MovieClip();
            // add a blank MovieClip to the preloader to hold the Ad
            addChild(_clip);   
        }
         
        override public function set preloader( preloader:Sprite ):void 
        {           
              
                
                MochiServices.setContainer();

                //MochiServices.stayOnTop();
                MochiServices.bringToTop();

             
            
           
MochiScores.showLeaderboard( { id:"843a25e5b3a68b19", res: "640x480", clip: _clip, boardID: "eaffd9ea0d92dc0b" } );
            trace("[MochiScores] NOTE: Security Sandbox Violation errors below are normal");
           
        }
    
        private function MochiAdComplete():void 
        {       
            /*
                Ad finished, load the Flex application by
                dispatching Event.COMPLETE
            */
            dispatchEvent( new Event( Event.COMPLETE ) );
        }
        
     }

}
