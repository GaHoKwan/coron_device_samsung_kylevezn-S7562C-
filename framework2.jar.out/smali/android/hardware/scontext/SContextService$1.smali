.class Landroid/hardware/scontext/SContextService$1;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/contextaware/CAListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/contextaware/CAEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 513
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v4

    sget v5, Landroid/hardware/contextaware/CAEvent;->GESTURE_APPROACH:I

    if-ne v4, v5, :cond_2

    .line 514
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mIsScreenOn:Z
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$200(Landroid/hardware/scontext/SContextService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 515
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #calls: Landroid/hardware/scontext/SContextService;->setLEDNotification(Z)V
    invoke-static {v4, v6}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;Z)V

    .line 517
    :cond_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-result-object v4

    iput v6, v4, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->mApproach:I

    .line 518
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    iget-object v5, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    invoke-static {v5}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-result-object v5

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v4, v6, v5}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v4

    sget v5, Landroid/hardware/contextaware/CAEvent;->PEDOMETER:I

    if-ne v4, v5, :cond_3

    .line 520
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getPedometerContext()Landroid/hardware/contextaware/CAPedometerContext;

    move-result-object v3

    .line 521
    .local v3, pedometerContext:Landroid/hardware/contextaware/CAPedometerContext;
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/contextaware/CAPedometerContext;->getStepCount()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepCount:J

    .line 522
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/contextaware/CAPedometerContext;->getCalorie()D

    move-result-wide v5

    iput-wide v5, v4, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mCalorie:D

    .line 523
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/contextaware/CAPedometerContext;->getDistance()D

    move-result-wide v5

    iput-wide v5, v4, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mDistance:D

    .line 524
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/contextaware/CAPedometerContext;->getSpeed()D

    move-result-wide v5

    iput-wide v5, v4, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSpeed:D

    .line 525
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/contextaware/CAPedometerContext;->getStepStatus()I

    move-result v5

    iput v5, v4, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepStatus:I

    .line 526
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v6

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v4, v5, v6}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto :goto_0

    .line 527
    .end local v3           #pedometerContext:Landroid/hardware/contextaware/CAPedometerContext;
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v4

    sget v5, Landroid/hardware/contextaware/CAEvent;->STEP_COUNT_ALERT:I

    if-ne v4, v5, :cond_4

    .line 528
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-result-object v4

    iput v6, v4, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->mAlert:I

    .line 529
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v5, 0x3

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-result-object v6

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v4, v5, v6}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto :goto_0

    .line 530
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v4

    sget v5, Landroid/hardware/contextaware/CAEvent;->MOTION:I

    if-ne v4, v5, :cond_5

    .line 531
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getMotionContext()Landroid/hardware/contextaware/CAMotionContext;

    move-result-object v1

    .line 532
    .local v1, motionContext:Landroid/hardware/contextaware/CAMotionContext;
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/contextaware/CAMotionContext;->getType()I

    move-result v5

    iput v5, v4, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->mType:I

    .line 533
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v5, 0x4

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    move-result-object v6

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v4, v5, v6}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 534
    .end local v1           #motionContext:Landroid/hardware/contextaware/CAMotionContext;
    :cond_5
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v4

    sget v5, Landroid/hardware/contextaware/CAEvent;->MOVEMENT:I

    if-ne v4, v5, :cond_6

    .line 535
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getMovementContext()Landroid/hardware/contextaware/CAMovementContext;

    move-result-object v2

    .line 536
    .local v2, movementContext:Landroid/hardware/contextaware/CAMovementContext;
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/contextaware/CAMovementContext;->getAction()I

    move-result v5

    iput v5, v4, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->mAction:I

    .line 537
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v5, 0x5

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    move-result-object v6

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v4, v5, v6}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 538
    .end local v2           #movementContext:Landroid/hardware/contextaware/CAMovementContext;
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v4

    sget v5, Landroid/hardware/contextaware/CAEvent;->AUTO_ROTATION:I

    if-ne v4, v5, :cond_1

    .line 539
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getAutoRotationContext()Landroid/hardware/contextaware/CAAutoRotationContext;

    move-result-object v0

    .line 540
    .local v0, autoRotationContext:Landroid/hardware/contextaware/CAAutoRotationContext;
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$1000(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAAutoRotationContext;->getAngle()I

    move-result v5

    iput v5, v4, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->mAngle:I

    .line 541
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v5, 0x6

    iget-object v6, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$1000(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    move-result-object v6

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v4, v5, v6}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0
.end method
