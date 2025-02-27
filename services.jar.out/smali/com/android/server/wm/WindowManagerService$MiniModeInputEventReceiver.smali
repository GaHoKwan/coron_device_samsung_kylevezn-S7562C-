.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniModeInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1296
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1297
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 34
    .parameter "event"

    .prologue
    .line 1301
    const/4 v5, 0x0

    .line 1303
    .local v5, handled:Z
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v30, v0

    if-eqz v30, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v30

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_12

    .line 1305
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v13, v0

    .line 1306
    .local v13, motionEvent:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 1319
    :cond_0
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    .line 1320
    .local v28, x:F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getRawY()F

    move-result v29

    .line 1321
    .local v29, y:F
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 1323
    .local v4, action:I
    if-eqz v4, :cond_1

    .line 1510
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1512
    .end local v4           #action:I
    .end local v13           #motionEvent:Landroid/view/MotionEvent;
    .end local v28           #x:F
    .end local v29           #y:F
    :goto_0
    return-void

    .line 1327
    .restart local v4       #action:I
    .restart local v13       #motionEvent:Landroid/view/MotionEvent;
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1328
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v28

    move/from16 v2, v29

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FF)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;FF)Lcom/android/server/wm/WindowState;

    move-result-object v23

    .line 1334
    .local v23, targetWin:Lcom/android/server/wm/WindowState;
    if-nez v23, :cond_2

    .line 1335
    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1510
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 1336
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_3

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-nez v30, :cond_3

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManagerPolicy;->closeMultiWindowTrayBar()Z

    .line 1342
    :cond_3
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x834

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 1345
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1349
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1350
    .local v27, windows:Ljava/util/ArrayList;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v17, subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    .local v14, revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 1353
    .local v15, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1354
    .local v3, N:I
    const/16 v25, 0x0

    .line 1355
    .local v25, topWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v19, 0x0

    .line 1356
    .local v19, subTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v18, 0x0

    .line 1357
    .local v18, subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v16, 0x0

    .line 1358
    .local v16, subTargetWin:Lcom/android/server/wm/WindowState;
    const/16 v26, 0x0

    .line 1359
    .local v26, win:Lcom/android/server/wm/WindowState;
    add-int/lit8 v10, v3, -0x1

    .local v10, j:I
    :goto_1
    if-ltz v10, :cond_11

    .line 1361
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #win:Lcom/android/server/wm/WindowState;
    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 1363
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x834

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v32, 0x836

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_5

    .line 1359
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1369
    :cond_5
    move-object/from16 v25, v26

    .line 1373
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 1374
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1375
    .local v7, id:I
    if-gez v7, :cond_7

    .line 1376
    const-string v30, "WindowManager"

    const-string v32, "    no targetWin in mWindows!!"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/16 v25, 0x0

    .line 1383
    :goto_2
    if-eqz v25, :cond_11

    .line 1387
    add-int/lit8 v20, v7, -0x1

    .line 1388
    .local v20, subUnderWinIndex:I
    :goto_3
    if-ltz v20, :cond_6

    .line 1389
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1390
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 1398
    :cond_6
    :goto_4
    invoke-virtual {v15}, Ljava/util/Stack;->empty()Z

    move-result v30

    if-nez v30, :cond_9

    .line 1399
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1400
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1507
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v10           #j:I
    .end local v14           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v20           #subUnderWinIndex:I
    .end local v23           #targetWin:Lcom/android/server/wm/WindowState;
    .end local v25           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    .end local v27           #windows:Ljava/util/ArrayList;
    :catchall_0
    move-exception v30

    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1510
    .end local v4           #action:I
    .end local v13           #motionEvent:Landroid/view/MotionEvent;
    .end local v28           #x:F
    .end local v29           #y:F
    :catchall_1
    move-exception v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v30

    .line 1380
    .restart local v3       #N:I
    .restart local v4       #action:I
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v10       #j:I
    .restart local v13       #motionEvent:Landroid/view/MotionEvent;
    .restart local v14       #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v15       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    .restart local v17       #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v18       #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v19       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v23       #targetWin:Lcom/android/server/wm/WindowState;
    .restart local v25       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    .restart local v27       #windows:Ljava/util/ArrayList;
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_7
    :try_start_5
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1393
    .restart local v20       #subUnderWinIndex:I
    :cond_8
    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1396
    add-int/lit8 v20, v20, -0x1

    goto :goto_3

    .line 1402
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v21, v7, v30

    .line 1405
    .local v21, subUpperWinIndex:I
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    :goto_5
    move/from16 v0, v21

    if-gt v0, v3, :cond_a

    .line 1409
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1410
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 1419
    :cond_a
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "subTargetWinList = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v11, 0x0

    .local v11, k:I
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v11, v0, :cond_c

    .line 1421
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v30

    sub-int v30, v30, v11

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 1422
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1413
    .end local v11           #k:I
    :cond_b
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1414
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1426
    .restart local v11       #k:I
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v24

    .line 1427
    .local v24, topIndex:I
    :goto_7
    move/from16 v0, v24

    if-gt v0, v3, :cond_d

    .line 1428
    add-int/lit8 v30, v24, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 1429
    .restart local v19       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    if-eqz v19, :cond_d

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1430
    move-object/from16 v18, v19

    .line 1431
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 1436
    :cond_d
    if-eqz v18, :cond_e

    .line 1437
    move-object/from16 v25, v18

    .line 1441
    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    .line 1442
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "revSubTargetWinList.size() = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1444
    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_10

    .line 1445
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 1446
    .local v22, subWinAtList:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_8

    .line 1449
    .end local v9           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v22           #subWinAtList:Lcom/android/server/wm/WindowState;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1453
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 1507
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v14           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v20           #subUnderWinIndex:I
    .end local v21           #subUpperWinIndex:I
    .end local v24           #topIndex:I
    .end local v25           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    .end local v27           #windows:Ljava/util/ArrayList;
    :cond_11
    :goto_9
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1510
    .end local v4           #action:I
    .end local v13           #motionEvent:Landroid/view/MotionEvent;
    .end local v23           #targetWin:Lcom/android/server/wm/WindowState;
    .end local v28           #x:F
    .end local v29           #y:F
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_0

    .line 1464
    .restart local v3       #N:I
    .restart local v4       #action:I
    .restart local v6       #i:I
    .restart local v10       #j:I
    .restart local v13       #motionEvent:Landroid/view/MotionEvent;
    .restart local v14       #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v15       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #subTargetWin:Lcom/android/server/wm/WindowState;
    .restart local v17       #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v18       #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v19       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v23       #targetWin:Lcom/android/server/wm/WindowState;
    .restart local v25       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    .restart local v27       #windows:Ljava/util/ArrayList;
    .restart local v28       #x:F
    .restart local v29       #y:F
    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_9

    .line 1477
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v10           #j:I
    .end local v14           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v15           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v18           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v19           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v25           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    .end local v27           #windows:Ljava/util/ArrayList;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_15

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 1486
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_11

    .line 1487
    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_11

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x20

    if-eqz v30, :cond_17

    const/4 v8, 0x1

    .line 1490
    .local v8, ignoreOtherAppTouched:Z
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_16

    if-eqz v8, :cond_18

    .line 1491
    :cond_16
    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1510
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_0

    .line 1488
    .end local v8           #ignoreOtherAppTouched:Z
    :cond_17
    const/4 v8, 0x0

    goto :goto_a

    .line 1493
    .restart local v8       #ignoreOtherAppTouched:Z
    :cond_18
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1100()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 1494
    const-string v30, "WindowManager"

    const-string v32, "otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetWin >> "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const-string v30, "WindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mCurrentFocus >> "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setCurrentInputMethodClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v30, v0

    const/16 v32, 0x3e8

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 1502
    .local v12, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_9
.end method
