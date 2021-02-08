/****************** 
 * Mbah_Test Test *
 ******************/

// init psychoJS:
const psychoJS = new PsychoJS({
  debug: true
});

// open window:
psychoJS.openWindow({
  fullscr: false,
  color: new util.Color('#A19C99'),
  units: 'height',
  waitBlanking: true
});

// store info about the experiment session:
let expName = 'mbah_test';  // from the Builder filename that created this script
let expInfo = {'participant': '', 'session': '001'};

// Start code blocks for 'Before Experiment'
// schedule the experiment:
psychoJS.schedule(psychoJS.gui.DlgFromDict({
  dictionary: expInfo,
  title: expName
}));

const flowScheduler = new Scheduler(psychoJS);
const dialogCancelScheduler = new Scheduler(psychoJS);
psychoJS.scheduleCondition(function() { return (psychoJS.gui.dialogComponent.button === 'OK'); }, flowScheduler, dialogCancelScheduler);

// flowScheduler gets run if the participants presses OK
flowScheduler.add(updateInfo); // add timeStamp
flowScheduler.add(experimentInit);
const trialsLoopScheduler = new Scheduler(psychoJS);
flowScheduler.add(trialsLoopBegin, trialsLoopScheduler);
flowScheduler.add(trialsLoopScheduler);
flowScheduler.add(trialsLoopEnd);
const trials_2LoopScheduler = new Scheduler(psychoJS);
flowScheduler.add(trials_2LoopBegin, trials_2LoopScheduler);
flowScheduler.add(trials_2LoopScheduler);
flowScheduler.add(trials_2LoopEnd);
flowScheduler.add(quitPsychoJS, '', true);

// quit if user presses Cancel in dialog box:
dialogCancelScheduler.add(quitPsychoJS, '', false);

psychoJS.start({
  expName: expName,
  expInfo: expInfo,
  resources: [
    {'name': '../stim/square_low_complexity_static_c1.png', 'path': '../stim/square_low_complexity_static_c1.png'},
    {'name': '../stim/circle_low_complexity_movement_c1.mp4', 'path': '../stim/circle_low_complexity_movement_c1.mp4'},
    {'name': '../stim/square_low_complexity_static_c2.png', 'path': '../stim/square_low_complexity_static_c2.png'},
    {'name': '../stim/circle_low_complexity_static_c3.png', 'path': '../stim/circle_low_complexity_static_c3.png'},
    {'name': 'trials.csv', 'path': 'trials.csv'},
    {'name': '../stim/circle_low_complexity_static_c4.png', 'path': '../stim/circle_low_complexity_static_c4.png'},
    {'name': '../stim/square_low_complexity_movement_c2.mp4', 'path': '../stim/square_low_complexity_movement_c2.mp4'},
    {'name': '../stim/square_high_complexity_movement_c2.mp4', 'path': '../stim/square_high_complexity_movement_c2.mp4'},
    {'name': '../stim/circle_high_complexity_static_c2.png', 'path': '../stim/circle_high_complexity_static_c2.png'},
    {'name': '../stim/circle_low_complexity_movement_c2.mp4', 'path': '../stim/circle_low_complexity_movement_c2.mp4'},
    {'name': '../stim/square_low_complexity_static_c3.png', 'path': '../stim/square_low_complexity_static_c3.png'},
    {'name': '../stim/circle_low_complexity_static_c1.png', 'path': '../stim/circle_low_complexity_static_c1.png'},
    {'name': '../stim/circle_high_complexity_movement_c2.mp4', 'path': '../stim/circle_high_complexity_movement_c2.mp4'},
    {'name': '../stim/circle_low_complexity_static_c2.png', 'path': '../stim/circle_low_complexity_static_c2.png'},
    {'name': '../stim/square_high_complexity_static_c3.png', 'path': '../stim/square_high_complexity_static_c3.png'},
    {'name': '../stim/circle_high_complexity_static_c4.png', 'path': '../stim/circle_high_complexity_static_c4.png'},
    {'name': '../stim/square_high_complexity_movement_c1.mp4', 'path': '../stim/square_high_complexity_movement_c1.mp4'},
    {'name': '../stim/circle_high_complexity_movement_c1.mp4', 'path': '../stim/circle_high_complexity_movement_c1.mp4'},
    {'name': '../stim/circle_high_complexity_static_c1.png', 'path': '../stim/circle_high_complexity_static_c1.png'},
    {'name': '../stim/circle_high_complexity_static_c3.png', 'path': '../stim/circle_high_complexity_static_c3.png'},
    {'name': '../stim/square_high_complexity_static_c2.png', 'path': '../stim/square_high_complexity_static_c2.png'},
    {'name': '../stim/square_high_complexity_static_c1.png', 'path': '../stim/square_high_complexity_static_c1.png'},
    {'name': '../stim/square_low_complexity_static_c4.png', 'path': '../stim/square_low_complexity_static_c4.png'},
    {'name': '../stim/square_high_complexity_static_c4.png', 'path': '../stim/square_high_complexity_static_c4.png'},
    {'name': '../stim/square_low_complexity_movement_c1.mp4', 'path': '../stim/square_low_complexity_movement_c1.mp4'}
  ]
});

psychoJS.experimentLogger.setLevel(core.Logger.ServerLevel.DEBUG);


var frameDur;
function updateInfo() {
  expInfo['date'] = util.MonotonicClock.getDateStr();  // add a simple timestamp
  expInfo['expName'] = expName;
  expInfo['psychopyVersion'] = '2020.2.8';
  expInfo['OS'] = window.navigator.platform;

  // store frame rate of monitor if we can measure it successfully
  expInfo['frameRate'] = psychoJS.window.getActualFrameRate();
  if (typeof expInfo['frameRate'] !== 'undefined')
    frameDur = 1.0 / Math.round(expInfo['frameRate']);
  else
    frameDur = 1.0 / 60.0; // couldn't get a reliable measure so guess

  // add info from the URL:
  util.addInfoFromUrl(expInfo);
  
  return Scheduler.Event.NEXT;
}


var staticClock;
var image_left_trial;
var image_right_trial;
var key_resp;
var mouse;
var text;
var movementClock;
var key_resp_2;
var mouse_2;
var text_2;
var globalClock;
var routineTimer;
function experimentInit() {
  // Initialize components for Routine "static"
  staticClock = new util.Clock();
  image_left_trial = new visual.ImageStim({
    win : psychoJS.window,
    name : 'image_left_trial', units : undefined, 
    image : undefined, mask : undefined,
    ori : 0, pos : [(- 0.4), 0], size : [0.5, 0.5],
    color : new util.Color([1, 1, 1]), opacity : 1,
    flipHoriz : false, flipVert : false,
    texRes : 512, interpolate : true, depth : 0.0 
  });
  image_right_trial = new visual.ImageStim({
    win : psychoJS.window,
    name : 'image_right_trial', units : undefined, 
    image : undefined, mask : undefined,
    ori : 0, pos : [0.4, 0], size : [0.5, 0.5],
    color : new util.Color([1, 1, 1]), opacity : 1,
    flipHoriz : false, flipVert : false,
    texRes : 512, interpolate : true, depth : -1.0 
  });
  key_resp = new core.Keyboard({psychoJS: psychoJS, clock: new util.Clock(), waitForStart: true});
  
  mouse = new core.Mouse({
    win: psychoJS.window,
  });
  mouse.mouseClock = new util.Clock();
  text = new visual.TextStim({
    win: psychoJS.window,
    name: 'text',
    text: 'default text',
    font: 'Arial',
    units: undefined, 
    pos: [0, 0.4], height: 0.07,  wrapWidth: undefined, ori: 0,
    color: new util.Color('white'),  opacity: 1,
    depth: -4.0 
  });
  
  // Initialize components for Routine "movement"
  movementClock = new util.Clock();
  key_resp_2 = new core.Keyboard({psychoJS: psychoJS, clock: new util.Clock(), waitForStart: true});
  
  mouse_2 = new core.Mouse({
    win: psychoJS.window,
  });
  mouse_2.mouseClock = new util.Clock();
  text_2 = new visual.TextStim({
    win: psychoJS.window,
    name: 'text_2',
    text: 'default text',
    font: 'Arial',
    units: undefined, 
    pos: [0, 0.4], height: 0.07,  wrapWidth: undefined, ori: 0,
    color: new util.Color('white'),  opacity: 1,
    depth: -3.0 
  });
  
  // Create some handy timers
  globalClock = new util.Clock();  // to track the time since experiment started
  routineTimer = new util.CountdownTimer();  // to track time remaining of each (non-slip) routine
  
  return Scheduler.Event.NEXT;
}


var trials;
var currentLoop;
function trialsLoopBegin(trialsLoopScheduler) {
  // set up handler to look after randomisation of conditions etc
  trials = new TrialHandler({
    psychoJS: psychoJS,
    nReps: 1, method: TrialHandler.Method.SEQUENTIAL,
    extraInfo: expInfo, originPath: undefined,
    trialList: TrialHandler.importConditions(psychoJS.serverManager, 'trials.csv', '0:8'),
    seed: undefined, name: 'trials'
  });
  psychoJS.experiment.addLoop(trials); // add the loop to the experiment
  currentLoop = trials;  // we're now the current loop

  // Schedule all the trials in the trialList:
  trials.forEach(function() {
    const snapshot = trials.getSnapshot();

    trialsLoopScheduler.add(importConditions(snapshot));
    trialsLoopScheduler.add(staticRoutineBegin(snapshot));
    trialsLoopScheduler.add(staticRoutineEachFrame(snapshot));
    trialsLoopScheduler.add(staticRoutineEnd(snapshot));
    trialsLoopScheduler.add(endLoopIteration(trialsLoopScheduler, snapshot));
  });

  return Scheduler.Event.NEXT;
}


function trialsLoopEnd() {
  psychoJS.experiment.removeLoop(trials);

  return Scheduler.Event.NEXT;
}


var trials_2;
function trials_2LoopBegin(trials_2LoopScheduler) {
  // set up handler to look after randomisation of conditions etc
  trials_2 = new TrialHandler({
    psychoJS: psychoJS,
    nReps: 1, method: TrialHandler.Method.SEQUENTIAL,
    extraInfo: expInfo, originPath: undefined,
    trialList: TrialHandler.importConditions(psychoJS.serverManager, 'trials.csv', '8:16'),
    seed: undefined, name: 'trials_2'
  });
  psychoJS.experiment.addLoop(trials_2); // add the loop to the experiment
  currentLoop = trials_2;  // we're now the current loop

  // Schedule all the trials in the trialList:
  trials_2.forEach(function() {
    const snapshot = trials_2.getSnapshot();

    trials_2LoopScheduler.add(importConditions(snapshot));
    trials_2LoopScheduler.add(movementRoutineBegin(snapshot));
    trials_2LoopScheduler.add(movementRoutineEachFrame(snapshot));
    trials_2LoopScheduler.add(movementRoutineEnd(snapshot));
    trials_2LoopScheduler.add(endLoopIteration(trials_2LoopScheduler, snapshot));
  });

  return Scheduler.Event.NEXT;
}


function trials_2LoopEnd() {
  psychoJS.experiment.removeLoop(trials_2);

  return Scheduler.Event.NEXT;
}


var t;
var frameN;
var _key_resp_allKeys;
var gotValidClick;
var staticComponents;
function staticRoutineBegin(snapshot) {
  return function () {
    //------Prepare to start Routine 'static'-------
    t = 0;
    staticClock.reset(); // clock
    frameN = -1;
    // update component parameters for each repeat
    image_left_trial.setImage(image_left);
    image_right_trial.setImage(image_right);
    key_resp.keys = undefined;
    key_resp.rt = undefined;
    _key_resp_allKeys = [];
    // setup some python lists for storing info about the mouse
    gotValidClick = false; // until a click is received
    text.setText(name);
    // keep track of which components have finished
    staticComponents = [];
    staticComponents.push(image_left_trial);
    staticComponents.push(image_right_trial);
    staticComponents.push(key_resp);
    staticComponents.push(mouse);
    staticComponents.push(text);
    
    staticComponents.forEach( function(thisComponent) {
      if ('status' in thisComponent)
        thisComponent.status = PsychoJS.Status.NOT_STARTED;
       });
    // check if the Routine should terminate
    if (!continueRoutine) {  // a component has requested a forced-end of Routine
      return Scheduler.Event.NEXT;
    }
  };
}


var continueRoutine;
var prevButtonState;
var _mouseButtons;
function staticRoutineEachFrame(snapshot) {
  return function () {
    //------Loop for each frame of Routine 'static'-------
    let continueRoutine = true; // until we're told otherwise
    // get current time
    t = staticClock.getTime();
    frameN = frameN + 1;// number of completed frames (so 0 is the first frame)
    // update/draw components on each frame
    
    // *image_left_trial* updates
    if (t >= 0.0 && image_left_trial.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      image_left_trial.tStart = t;  // (not accounting for frame time here)
      image_left_trial.frameNStart = frameN;  // exact frame index
      
      image_left_trial.setAutoDraw(true);
    }

    
    // *image_right_trial* updates
    if (t >= 0.0 && image_right_trial.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      image_right_trial.tStart = t;  // (not accounting for frame time here)
      image_right_trial.frameNStart = frameN;  // exact frame index
      
      image_right_trial.setAutoDraw(true);
    }

    
    // *key_resp* updates
    if (t >= 0.0 && key_resp.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      key_resp.tStart = t;  // (not accounting for frame time here)
      key_resp.frameNStart = frameN;  // exact frame index
      
      // keyboard checking is just starting
      psychoJS.window.callOnFlip(function() { key_resp.clock.reset(); });  // t=0 on next screen flip
      psychoJS.window.callOnFlip(function() { key_resp.start(); }); // start on screen flip
      psychoJS.window.callOnFlip(function() { key_resp.clearEvents(); });
    }

    if (key_resp.status === PsychoJS.Status.STARTED) {
      let theseKeys = key_resp.getKeys({keyList: ['y', 'n', 'left', 'right', 'space'], waitRelease: false});
      _key_resp_allKeys = _key_resp_allKeys.concat(theseKeys);
      if (_key_resp_allKeys.length > 0) {
        key_resp.keys = _key_resp_allKeys[_key_resp_allKeys.length - 1].name;  // just the last key pressed
        key_resp.rt = _key_resp_allKeys[_key_resp_allKeys.length - 1].rt;
        // a response ends the routine
        continueRoutine = false;
      }
    }
    
    // *mouse* updates
    if (t >= 0.0 && mouse.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      mouse.tStart = t;  // (not accounting for frame time here)
      mouse.frameNStart = frameN;  // exact frame index
      
      mouse.status = PsychoJS.Status.STARTED;
      mouse.mouseClock.reset();
      prevButtonState = [0, 0, 0];  // if now button is down we will treat as 'new' click
      }
    if (mouse.status === PsychoJS.Status.STARTED) {  // only update if started and not finished!
      _mouseButtons = mouse.getPressed();
      if (!_mouseButtons.every( (e,i,) => (e == prevButtonState[i]) )) { // button state changed?
        prevButtonState = _mouseButtons;
        if (_mouseButtons.reduce( (e, acc) => (e+acc) ) > 0) { // state changed to a new click
          // abort routine on response
          continueRoutine = false;
        }
      }
    }
    
    // *text* updates
    if (t >= 0.0 && text.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      text.tStart = t;  // (not accounting for frame time here)
      text.frameNStart = frameN;  // exact frame index
      
      text.setAutoDraw(true);
    }

    // check for quit (typically the Esc key)
    if (psychoJS.experiment.experimentEnded || psychoJS.eventManager.getKeys({keyList:['escape']}).length > 0) {
      return quitPsychoJS('The [Escape] key was pressed. Goodbye!', false);
    }
    
    // check if the Routine should terminate
    if (!continueRoutine) {  // a component has requested a forced-end of Routine
      return Scheduler.Event.NEXT;
    }
    
    continueRoutine = false;  // reverts to True if at least one component still running
    staticComponents.forEach( function(thisComponent) {
      if ('status' in thisComponent && thisComponent.status !== PsychoJS.Status.FINISHED) {
        continueRoutine = true;
      }
    });
    
    // refresh the screen if continuing
    if (continueRoutine) {
      return Scheduler.Event.FLIP_REPEAT;
    } else {
      return Scheduler.Event.NEXT;
    }
  };
}


function staticRoutineEnd(snapshot) {
  return function () {
    //------Ending Routine 'static'-------
    staticComponents.forEach( function(thisComponent) {
      if (typeof thisComponent.setAutoDraw === 'function') {
        thisComponent.setAutoDraw(false);
      }
    });
    // store data for thisExp (ExperimentHandler)
    // the Routine "static" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset();
    
    return Scheduler.Event.NEXT;
  };
}


var movie_left_trialClock;
var movie_left_trial;
var _key_resp_2_allKeys;
var movementComponents;
function movementRoutineBegin(snapshot) {
  return function () {
    //------Prepare to start Routine 'movement'-------
    t = 0;
    movementClock.reset(); // clock
    frameN = -1;
    // update component parameters for each repeat
    movie_left_trialClock = new util.Clock();
    movie_left_trial = new visual.MovieStim({
      win: psychoJS.window,
      name: 'movie_left_trial',
      units: undefined,
      movie: image_left,
      pos: [0, 0],
      size: size,
      ori: 0,
      opacity: 1,
      loop: true,
      noAudio: false,
      });
    key_resp_2.keys = undefined;
    key_resp_2.rt = undefined;
    _key_resp_2_allKeys = [];
    // setup some python lists for storing info about the mouse_2
    gotValidClick = false; // until a click is received
    text_2.setText(name);
    // keep track of which components have finished
    movementComponents = [];
    movementComponents.push(movie_left_trial);
    movementComponents.push(key_resp_2);
    movementComponents.push(mouse_2);
    movementComponents.push(text_2);
    
    movementComponents.forEach( function(thisComponent) {
      if ('status' in thisComponent)
        thisComponent.status = PsychoJS.Status.NOT_STARTED;
       });
    // check if the Routine should terminate
    if (!continueRoutine) {  // a component has requested a forced-end of Routine
      return Scheduler.Event.NEXT;
    }
  };
}


function movementRoutineEachFrame(snapshot) {
  return function () {
    //------Loop for each frame of Routine 'movement'-------
    let continueRoutine = true; // until we're told otherwise
    // get current time
    t = movementClock.getTime();
    frameN = frameN + 1;// number of completed frames (so 0 is the first frame)
    // update/draw components on each frame
    
    // *movie_left_trial* updates
    if (t >= 0.0 && movie_left_trial.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      movie_left_trial.tStart = t;  // (not accounting for frame time here)
      movie_left_trial.frameNStart = frameN;  // exact frame index
      
      movie_left_trial.setAutoDraw(true);
      movie_left_trial.play();
    }

    
    // *key_resp_2* updates
    if (t >= 0.0 && key_resp_2.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      key_resp_2.tStart = t;  // (not accounting for frame time here)
      key_resp_2.frameNStart = frameN;  // exact frame index
      
      // keyboard checking is just starting
      psychoJS.window.callOnFlip(function() { key_resp_2.clock.reset(); });  // t=0 on next screen flip
      psychoJS.window.callOnFlip(function() { key_resp_2.start(); }); // start on screen flip
      psychoJS.window.callOnFlip(function() { key_resp_2.clearEvents(); });
    }

    if (key_resp_2.status === PsychoJS.Status.STARTED) {
      let theseKeys = key_resp_2.getKeys({keyList: ['y', 'n', 'left', 'right', 'space'], waitRelease: false});
      _key_resp_2_allKeys = _key_resp_2_allKeys.concat(theseKeys);
      if (_key_resp_2_allKeys.length > 0) {
        key_resp_2.keys = _key_resp_2_allKeys[_key_resp_2_allKeys.length - 1].name;  // just the last key pressed
        key_resp_2.rt = _key_resp_2_allKeys[_key_resp_2_allKeys.length - 1].rt;
        // a response ends the routine
        continueRoutine = false;
      }
    }
    
    // *mouse_2* updates
    if (t >= 0.0 && mouse_2.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      mouse_2.tStart = t;  // (not accounting for frame time here)
      mouse_2.frameNStart = frameN;  // exact frame index
      
      mouse_2.status = PsychoJS.Status.STARTED;
      mouse_2.mouseClock.reset();
      prevButtonState = mouse_2.getPressed();  // if button is down already this ISN'T a new click
      }
    if (mouse_2.status === PsychoJS.Status.STARTED) {  // only update if started and not finished!
      _mouseButtons = mouse_2.getPressed();
      if (!_mouseButtons.every( (e,i,) => (e == prevButtonState[i]) )) { // button state changed?
        prevButtonState = _mouseButtons;
        if (_mouseButtons.reduce( (e, acc) => (e+acc) ) > 0) { // state changed to a new click
          // abort routine on response
          continueRoutine = false;
        }
      }
    }
    
    // *text_2* updates
    if (t >= 0.0 && text_2.status === PsychoJS.Status.NOT_STARTED) {
      // keep track of start time/frame for later
      text_2.tStart = t;  // (not accounting for frame time here)
      text_2.frameNStart = frameN;  // exact frame index
      
      text_2.setAutoDraw(true);
    }

    // check for quit (typically the Esc key)
    if (psychoJS.experiment.experimentEnded || psychoJS.eventManager.getKeys({keyList:['escape']}).length > 0) {
      return quitPsychoJS('The [Escape] key was pressed. Goodbye!', false);
    }
    
    // check if the Routine should terminate
    if (!continueRoutine) {  // a component has requested a forced-end of Routine
      return Scheduler.Event.NEXT;
    }
    
    continueRoutine = false;  // reverts to True if at least one component still running
    movementComponents.forEach( function(thisComponent) {
      if ('status' in thisComponent && thisComponent.status !== PsychoJS.Status.FINISHED) {
        continueRoutine = true;
      }
    });
    
    // refresh the screen if continuing
    if (continueRoutine) {
      return Scheduler.Event.FLIP_REPEAT;
    } else {
      return Scheduler.Event.NEXT;
    }
  };
}


var _mouseXYs;
function movementRoutineEnd(snapshot) {
  return function () {
    //------Ending Routine 'movement'-------
    movementComponents.forEach( function(thisComponent) {
      if (typeof thisComponent.setAutoDraw === 'function') {
        thisComponent.setAutoDraw(false);
      }
    });
    movie_left_trial.stop();
    // store data for thisExp (ExperimentHandler)
    _mouseXYs = mouse_2.getPos();
    _mouseButtons = mouse_2.getPressed();
    psychoJS.experiment.addData('mouse_2.x', _mouseXYs[0]);
    psychoJS.experiment.addData('mouse_2.y', _mouseXYs[1]);
    psychoJS.experiment.addData('mouse_2.leftButton', _mouseButtons[0]);
    psychoJS.experiment.addData('mouse_2.midButton', _mouseButtons[1]);
    psychoJS.experiment.addData('mouse_2.rightButton', _mouseButtons[2]);
    // the Routine "movement" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset();
    
    return Scheduler.Event.NEXT;
  };
}


function endLoopIteration(scheduler, snapshot) {
  // ------Prepare for next entry------
  return function () {
    if (typeof snapshot !== 'undefined') {
      // ------Check if user ended loop early------
      if (snapshot.finished) {
        // Check for and save orphaned data
        if (psychoJS.experiment.isEntryEmpty()) {
          psychoJS.experiment.nextEntry(snapshot);
        }
        scheduler.stop();
      } else {
        const thisTrial = snapshot.getCurrentTrial();
        if (typeof thisTrial === 'undefined' || !('isTrials' in thisTrial) || thisTrial.isTrials) {
          psychoJS.experiment.nextEntry(snapshot);
        }
      }
    return Scheduler.Event.NEXT;
    }
  };
}


function importConditions(currentLoop) {
  return function () {
    psychoJS.importAttributes(currentLoop.getCurrentTrial());
    return Scheduler.Event.NEXT;
    };
}


function quitPsychoJS(message, isCompleted) {
  // Check for and save orphaned data
  if (psychoJS.experiment.isEntryEmpty()) {
    psychoJS.experiment.nextEntry();
  }
  psychoJS.window.close();
  psychoJS.quit({message: message, isCompleted: isCompleted});
  
  return Scheduler.Event.QUIT;
}
