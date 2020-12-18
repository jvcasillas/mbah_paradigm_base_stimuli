#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
This experiment was created using PsychoPy3 Experiment Builder (v2020.2.8),
    on Fri Dec 18 08:23:45 2020
If you publish work using this script the most relevant publication is:

    Peirce J, Gray JR, Simpson S, MacAskill M, Höchenberger R, Sogo H, Kastman E, Lindeløv JK. (2019) 
        PsychoPy2: Experiments in behavior made easy Behav Res 51: 195. 
        https://doi.org/10.3758/s13428-018-01193-y

"""

from __future__ import absolute_import, division

from psychopy import locale_setup
from psychopy import prefs
from psychopy import sound, gui, visual, core, data, event, logging, clock
from psychopy.constants import (NOT_STARTED, STARTED, PLAYING, PAUSED,
                                STOPPED, FINISHED, PRESSED, RELEASED, FOREVER)

import numpy as np  # whole numpy lib is available, prepend 'np.'
from numpy import (sin, cos, tan, log, log10, pi, average,
                   sqrt, std, deg2rad, rad2deg, linspace, asarray)
from numpy.random import random, randint, normal, shuffle
import os  # handy system and path functions
import sys  # to get file system encoding

from psychopy.hardware import keyboard



# Ensure that relative paths start from the same directory as this script
_thisDir = os.path.dirname(os.path.abspath(__file__))
os.chdir(_thisDir)

# Store info about the experiment session
psychopyVersion = '2020.2.8'
expName = 'mbah_test'  # from the Builder filename that created this script
expInfo = {'participant': '', 'session': '001'}
dlg = gui.DlgFromDict(dictionary=expInfo, sortKeys=False, title=expName)
if dlg.OK == False:
    core.quit()  # user pressed cancel
expInfo['date'] = data.getDateStr()  # add a simple timestamp
expInfo['expName'] = expName
expInfo['psychopyVersion'] = psychopyVersion

# Data file name stem = absolute path + name; later add .psyexp, .csv, .log, etc
filename = _thisDir + os.sep + u'data/%s_%s_%s' % (expInfo['participant'], expName, expInfo['date'])

# An ExperimentHandler isn't essential but helps with data saving
thisExp = data.ExperimentHandler(name=expName, version='',
    extraInfo=expInfo, runtimeInfo=None,
    originPath='/Users/casillas/academia/research/in_progress/many_babies_stim/exp/mbah_test_lastrun.py',
    savePickle=True, saveWideText=True,
    dataFileName=filename)
# save a log file for detail verbose info
logFile = logging.LogFile(filename+'.log', level=logging.DEBUG)
logging.console.setLevel(logging.WARNING)  # this outputs to the screen, not a file

endExpNow = False  # flag for 'escape' or other condition => quit the exp
frameTolerance = 0.001  # how close to onset before 'same' frame

# Start Code - component code to be run after the window creation

# Setup the Window
win = visual.Window(
    size=[1920, 1200], fullscr=False, screen=0, 
    winType='pyglet', allowGUI=True, allowStencil=False,
    monitor='testMonitor', color='#A19C99', colorSpace='hex',
    blendMode='avg', useFBO=True, 
    units='height')
# store frame rate of monitor if we can measure it
expInfo['frameRate'] = win.getActualFrameRate()
if expInfo['frameRate'] != None:
    frameDur = 1.0 / round(expInfo['frameRate'])
else:
    frameDur = 1.0 / 60.0  # could not measure, so guess

# create a default keyboard (e.g. to check for escape)
defaultKeyboard = keyboard.Keyboard()

# Initialize components for Routine "static"
staticClock = core.Clock()
image_left_trial = visual.ImageStim(
    win=win,
    name='image_left_trial', 
    image='sin', mask=None,
    ori=0, pos=(-0.4, 0), size=(0.5, 0.5),
    color=[1,1,1], colorSpace='rgb', opacity=1,
    flipHoriz=False, flipVert=False,
    texRes=512, interpolate=True, depth=0.0)
image_right_trial = visual.ImageStim(
    win=win,
    name='image_right_trial', 
    image='sin', mask=None,
    ori=0, pos=(0.4, 0), size=(0.5, 0.5),
    color=[1,1,1], colorSpace='rgb', opacity=1,
    flipHoriz=False, flipVert=False,
    texRes=512, interpolate=True, depth=-1.0)
key_resp = keyboard.Keyboard()
mouse = event.Mouse(win=win)
x, y = [None, None]
mouse.mouseClock = core.Clock()
text = visual.TextStim(win=win, name='text',
    text='Static',
    font='Arial',
    pos=(0, 0.4), height=0.1, wrapWidth=None, ori=0, 
    color='white', colorSpace='rgb', opacity=1, 
    languageStyle='LTR',
    depth=-4.0);

# Initialize components for Routine "movement"
movementClock = core.Clock()
key_resp_2 = keyboard.Keyboard()
mouse_2 = event.Mouse(win=win)
x, y = [None, None]
mouse_2.mouseClock = core.Clock()
text_2 = visual.TextStim(win=win, name='text_2',
    text='Movement',
    font='Arial',
    pos=(0, 0.4), height=0.1, wrapWidth=None, ori=0, 
    color='white', colorSpace='rgb', opacity=1, 
    languageStyle='LTR',
    depth=-4.0);

# Create some handy timers
globalClock = core.Clock()  # to track the time since experiment started
routineTimer = core.CountdownTimer()  # to track time remaining of each (non-slip) routine 

# set up handler to look after randomisation of conditions etc
trials = data.TrialHandler(nReps=1, method='sequential', 
    extraInfo=expInfo, originPath=-1,
    trialList=data.importConditions('trials.csv', selection='0:8'),
    seed=None, name='trials')
thisExp.addLoop(trials)  # add the loop to the experiment
thisTrial = trials.trialList[0]  # so we can initialise stimuli with some values
# abbreviate parameter names if possible (e.g. rgb = thisTrial.rgb)
if thisTrial != None:
    for paramName in thisTrial:
        exec('{} = thisTrial[paramName]'.format(paramName))

for thisTrial in trials:
    currentLoop = trials
    # abbreviate parameter names if possible (e.g. rgb = thisTrial.rgb)
    if thisTrial != None:
        for paramName in thisTrial:
            exec('{} = thisTrial[paramName]'.format(paramName))
    
    # ------Prepare to start Routine "static"-------
    continueRoutine = True
    # update component parameters for each repeat
    image_left_trial.setImage(image_left)
    image_right_trial.setImage(image_right)
    key_resp.keys = []
    key_resp.rt = []
    _key_resp_allKeys = []
    # setup some python lists for storing info about the mouse
    gotValidClick = False  # until a click is received
    # keep track of which components have finished
    staticComponents = [image_left_trial, image_right_trial, key_resp, mouse, text]
    for thisComponent in staticComponents:
        thisComponent.tStart = None
        thisComponent.tStop = None
        thisComponent.tStartRefresh = None
        thisComponent.tStopRefresh = None
        if hasattr(thisComponent, 'status'):
            thisComponent.status = NOT_STARTED
    # reset timers
    t = 0
    _timeToFirstFrame = win.getFutureFlipTime(clock="now")
    staticClock.reset(-_timeToFirstFrame)  # t0 is time of first possible flip
    frameN = -1
    
    # -------Run Routine "static"-------
    while continueRoutine:
        # get current time
        t = staticClock.getTime()
        tThisFlip = win.getFutureFlipTime(clock=staticClock)
        tThisFlipGlobal = win.getFutureFlipTime(clock=None)
        frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
        # update/draw components on each frame
        
        # *image_left_trial* updates
        if image_left_trial.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            image_left_trial.frameNStart = frameN  # exact frame index
            image_left_trial.tStart = t  # local t and not account for scr refresh
            image_left_trial.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(image_left_trial, 'tStartRefresh')  # time at next scr refresh
            image_left_trial.setAutoDraw(True)
        
        # *image_right_trial* updates
        if image_right_trial.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            image_right_trial.frameNStart = frameN  # exact frame index
            image_right_trial.tStart = t  # local t and not account for scr refresh
            image_right_trial.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(image_right_trial, 'tStartRefresh')  # time at next scr refresh
            image_right_trial.setAutoDraw(True)
        
        # *key_resp* updates
        waitOnFlip = False
        if key_resp.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            key_resp.frameNStart = frameN  # exact frame index
            key_resp.tStart = t  # local t and not account for scr refresh
            key_resp.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(key_resp, 'tStartRefresh')  # time at next scr refresh
            key_resp.status = STARTED
            # keyboard checking is just starting
            waitOnFlip = True
            win.callOnFlip(key_resp.clock.reset)  # t=0 on next screen flip
            win.callOnFlip(key_resp.clearEvents, eventType='keyboard')  # clear events on next screen flip
        if key_resp.status == STARTED and not waitOnFlip:
            theseKeys = key_resp.getKeys(keyList=['y', 'n', 'left', 'right', 'space'], waitRelease=False)
            _key_resp_allKeys.extend(theseKeys)
            if len(_key_resp_allKeys):
                key_resp.keys = _key_resp_allKeys[-1].name  # just the last key pressed
                key_resp.rt = _key_resp_allKeys[-1].rt
                # a response ends the routine
                continueRoutine = False
        # *mouse* updates
        if mouse.status == NOT_STARTED and t >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            mouse.frameNStart = frameN  # exact frame index
            mouse.tStart = t  # local t and not account for scr refresh
            mouse.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(mouse, 'tStartRefresh')  # time at next scr refresh
            mouse.status = STARTED
            mouse.mouseClock.reset()
            prevButtonState = [0, 0, 0]  # if now button is down we will treat as 'new' click
        if mouse.status == STARTED:  # only update if started and not finished!
            buttons = mouse.getPressed()
            if buttons != prevButtonState:  # button state changed?
                prevButtonState = buttons
                if sum(buttons) > 0:  # state changed to a new click
                    continueRoutine = False        
        # *text* updates
        if text.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            text.frameNStart = frameN  # exact frame index
            text.tStart = t  # local t and not account for scr refresh
            text.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(text, 'tStartRefresh')  # time at next scr refresh
            text.setAutoDraw(True)
        
        # check for quit (typically the Esc key)
        if endExpNow or defaultKeyboard.getKeys(keyList=["escape"]):
            core.quit()
        
        # check if all components have finished
        if not continueRoutine:  # a component has requested a forced-end of Routine
            break
        continueRoutine = False  # will revert to True if at least one component still running
        for thisComponent in staticComponents:
            if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                continueRoutine = True
                break  # at least one component has not yet finished
        
        # refresh the screen
        if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
            win.flip()
    
    # -------Ending Routine "static"-------
    for thisComponent in staticComponents:
        if hasattr(thisComponent, "setAutoDraw"):
            thisComponent.setAutoDraw(False)
    trials.addData('image_left_trial.started', image_left_trial.tStartRefresh)
    trials.addData('image_left_trial.stopped', image_left_trial.tStopRefresh)
    trials.addData('image_right_trial.started', image_right_trial.tStartRefresh)
    trials.addData('image_right_trial.stopped', image_right_trial.tStopRefresh)
    # store data for trials (TrialHandler)
    trials.addData('mouse.started', mouse.tStart)
    trials.addData('mouse.stopped', mouse.tStop)
    trials.addData('text.started', text.tStartRefresh)
    trials.addData('text.stopped', text.tStopRefresh)
    # the Routine "static" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset()
    thisExp.nextEntry()
    
# completed 1 repeats of 'trials'


# set up handler to look after randomisation of conditions etc
trials_2 = data.TrialHandler(nReps=1, method='sequential', 
    extraInfo=expInfo, originPath=-1,
    trialList=data.importConditions('trials.csv', selection='8:16'),
    seed=None, name='trials_2')
thisExp.addLoop(trials_2)  # add the loop to the experiment
thisTrial_2 = trials_2.trialList[0]  # so we can initialise stimuli with some values
# abbreviate parameter names if possible (e.g. rgb = thisTrial_2.rgb)
if thisTrial_2 != None:
    for paramName in thisTrial_2:
        exec('{} = thisTrial_2[paramName]'.format(paramName))

for thisTrial_2 in trials_2:
    currentLoop = trials_2
    # abbreviate parameter names if possible (e.g. rgb = thisTrial_2.rgb)
    if thisTrial_2 != None:
        for paramName in thisTrial_2:
            exec('{} = thisTrial_2[paramName]'.format(paramName))
    
    # ------Prepare to start Routine "movement"-------
    continueRoutine = True
    # update component parameters for each repeat
    movie_left_trial = visual.MovieStim3(
        win=win, name='movie_left_trial',
        noAudio = False,
        filename=image_left,
        ori=0, pos=(-0.4, 0), opacity=1,
        loop=True,
        depth=0.0,
        )
    movie_right_trial = visual.MovieStim3(
        win=win, name='movie_right_trial',
        noAudio = False,
        filename=image_right,
        ori=0, pos=(0.4, 0), opacity=1,
        loop=True,
        depth=-1.0,
        )
    key_resp_2.keys = []
    key_resp_2.rt = []
    _key_resp_2_allKeys = []
    # setup some python lists for storing info about the mouse_2
    gotValidClick = False  # until a click is received
    # keep track of which components have finished
    movementComponents = [movie_left_trial, movie_right_trial, key_resp_2, mouse_2, text_2]
    for thisComponent in movementComponents:
        thisComponent.tStart = None
        thisComponent.tStop = None
        thisComponent.tStartRefresh = None
        thisComponent.tStopRefresh = None
        if hasattr(thisComponent, 'status'):
            thisComponent.status = NOT_STARTED
    # reset timers
    t = 0
    _timeToFirstFrame = win.getFutureFlipTime(clock="now")
    movementClock.reset(-_timeToFirstFrame)  # t0 is time of first possible flip
    frameN = -1
    
    # -------Run Routine "movement"-------
    while continueRoutine:
        # get current time
        t = movementClock.getTime()
        tThisFlip = win.getFutureFlipTime(clock=movementClock)
        tThisFlipGlobal = win.getFutureFlipTime(clock=None)
        frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
        # update/draw components on each frame
        
        # *movie_left_trial* updates
        if movie_left_trial.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            movie_left_trial.frameNStart = frameN  # exact frame index
            movie_left_trial.tStart = t  # local t and not account for scr refresh
            movie_left_trial.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(movie_left_trial, 'tStartRefresh')  # time at next scr refresh
            movie_left_trial.setAutoDraw(True)
        
        # *movie_right_trial* updates
        if movie_right_trial.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            movie_right_trial.frameNStart = frameN  # exact frame index
            movie_right_trial.tStart = t  # local t and not account for scr refresh
            movie_right_trial.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(movie_right_trial, 'tStartRefresh')  # time at next scr refresh
            movie_right_trial.setAutoDraw(True)
        
        # *key_resp_2* updates
        waitOnFlip = False
        if key_resp_2.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            key_resp_2.frameNStart = frameN  # exact frame index
            key_resp_2.tStart = t  # local t and not account for scr refresh
            key_resp_2.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(key_resp_2, 'tStartRefresh')  # time at next scr refresh
            key_resp_2.status = STARTED
            # keyboard checking is just starting
            waitOnFlip = True
            win.callOnFlip(key_resp_2.clock.reset)  # t=0 on next screen flip
            win.callOnFlip(key_resp_2.clearEvents, eventType='keyboard')  # clear events on next screen flip
        if key_resp_2.status == STARTED and not waitOnFlip:
            theseKeys = key_resp_2.getKeys(keyList=['y', 'n', 'left', 'right', 'space'], waitRelease=False)
            _key_resp_2_allKeys.extend(theseKeys)
            if len(_key_resp_2_allKeys):
                key_resp_2.keys = _key_resp_2_allKeys[-1].name  # just the last key pressed
                key_resp_2.rt = _key_resp_2_allKeys[-1].rt
                # a response ends the routine
                continueRoutine = False
        # *mouse_2* updates
        if mouse_2.status == NOT_STARTED and t >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            mouse_2.frameNStart = frameN  # exact frame index
            mouse_2.tStart = t  # local t and not account for scr refresh
            mouse_2.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(mouse_2, 'tStartRefresh')  # time at next scr refresh
            mouse_2.status = STARTED
            mouse_2.mouseClock.reset()
            prevButtonState = mouse_2.getPressed()  # if button is down already this ISN'T a new click
        if mouse_2.status == STARTED:  # only update if started and not finished!
            buttons = mouse_2.getPressed()
            if buttons != prevButtonState:  # button state changed?
                prevButtonState = buttons
                if sum(buttons) > 0:  # state changed to a new click
                    # abort routine on response
                    continueRoutine = False
        
        # *text_2* updates
        if text_2.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            text_2.frameNStart = frameN  # exact frame index
            text_2.tStart = t  # local t and not account for scr refresh
            text_2.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(text_2, 'tStartRefresh')  # time at next scr refresh
            text_2.setAutoDraw(True)
        
        # check for quit (typically the Esc key)
        if endExpNow or defaultKeyboard.getKeys(keyList=["escape"]):
            core.quit()
        
        # check if all components have finished
        if not continueRoutine:  # a component has requested a forced-end of Routine
            break
        continueRoutine = False  # will revert to True if at least one component still running
        for thisComponent in movementComponents:
            if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                continueRoutine = True
                break  # at least one component has not yet finished
        
        # refresh the screen
        if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
            win.flip()
    
    # -------Ending Routine "movement"-------
    for thisComponent in movementComponents:
        if hasattr(thisComponent, "setAutoDraw"):
            thisComponent.setAutoDraw(False)
    movie_left_trial.stop()
    movie_right_trial.stop()
    # store data for trials_2 (TrialHandler)
    x, y = mouse_2.getPos()
    buttons = mouse_2.getPressed()
    trials_2.addData('mouse_2.x', x)
    trials_2.addData('mouse_2.y', y)
    trials_2.addData('mouse_2.leftButton', buttons[0])
    trials_2.addData('mouse_2.midButton', buttons[1])
    trials_2.addData('mouse_2.rightButton', buttons[2])
    trials_2.addData('mouse_2.started', mouse_2.tStart)
    trials_2.addData('mouse_2.stopped', mouse_2.tStop)
    trials_2.addData('text_2.started', text_2.tStartRefresh)
    trials_2.addData('text_2.stopped', text_2.tStopRefresh)
    # the Routine "movement" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset()
    thisExp.nextEntry()
    
# completed 1 repeats of 'trials_2'


# Flip one final time so any remaining win.callOnFlip() 
# and win.timeOnFlip() tasks get executed before quitting
win.flip()

# these shouldn't be strictly necessary (should auto-save)
thisExp.saveAsWideText(filename+'.csv', delim='auto')
thisExp.saveAsPickle(filename)
logging.flush()
# make sure everything is closed down
thisExp.abort()  # or data files will save again on exit
win.close()
core.quit()
