.class Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerDual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerDual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChangedExt(ILjava/lang/String;I)V
    .locals 0
    .parameter "callState"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    .line 501
    return-void
.end method

.method public onCallStateChangedExtBySlot(ILjava/lang/String;II)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"
    .parameter "phoneSlot"

    .prologue
    .line 550
    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    .line 551
    .local v1, slot:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 552
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStateChangedExtBySlot: wrong phoneSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    .line 557
    .local v0, dm:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    if-nez v0, :cond_1

    .line 558
    const-string v2, "NetworkController"

    const-string v3, "onCallStateChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 563
    :try_start_0
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    if-ne p1, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p3, v2, :cond_5

    .line 564
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 565
    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CallState]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$700(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getCallStateName(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$900(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p3, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    .line 571
    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    .line 572
    iput p3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 574
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    .line 575
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    .line 579
    :cond_4
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 577
    :cond_5
    :try_start_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CallState]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] same state??"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onDataActivityExt(II)V
    .locals 0
    .parameter "direction"
    .parameter "phoneType"

    .prologue
    .line 505
    return-void
.end method

.method public onDataActivityExtBySlot(III)V
    .locals 6
    .parameter "direction"
    .parameter "phoneType"
    .parameter "phoneSlot"

    .prologue
    .line 624
    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    .line 625
    .local v1, slot:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 626
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataActivityExtBySlot: wrong phoneSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    .line 631
    .local v0, dm:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    if-nez v0, :cond_1

    .line 632
    const-string v2, "NetworkController"

    const-string v3, "onDataActivityExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 637
    :try_start_0
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    if-ne p1, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p2, v2, :cond_5

    .line 639
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 640
    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DataActivity]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$700(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getDataActivityName(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$1100(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    .line 646
    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    .line 647
    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 649
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    .line 654
    :cond_4
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 652
    :cond_5
    :try_start_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DataActivity]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] same state??"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onDataConnectionStateChangedExt(III)V
    .locals 0
    .parameter "state"
    .parameter "networkType"
    .parameter "phoneType"

    .prologue
    .line 493
    return-void
.end method

.method public onDataConnectionStateChangedExtBySlot(IIII)V
    .locals 6
    .parameter "state"
    .parameter "networkType"
    .parameter "phoneType"
    .parameter "phoneSlot"

    .prologue
    .line 584
    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    .line 585
    .local v1, slot:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 586
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataConnectionStateChangedExtBySlot: wrong phoneSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    .line 591
    .local v0, dm:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    if-nez v0, :cond_1

    .line 592
    const-string v2, "NetworkController"

    const-string v3, "onDataConnectionStateChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 597
    :try_start_0
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    if-ne p1, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    if-ne p2, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p3, v2, :cond_5

    .line 601
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 602
    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DataConnect]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$700(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getDataStateName(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$1000(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p3, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    .line 610
    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    .line 611
    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    .line 612
    iput p3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 614
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    .line 615
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    .line 619
    :cond_4
    :goto_1
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 617
    :cond_5
    :try_start_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DataConnect]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] same state??"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 0
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 489
    return-void
.end method

.method public onServiceStateChangedExtBySlot(Landroid/telephony/ServiceState;II)V
    .locals 6
    .parameter "state"
    .parameter "phoneType"
    .parameter "phoneSlot"

    .prologue
    .line 509
    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    .line 510
    .local v1, slot:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 511
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceStateChangedExtBySlot: wrong phoneSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_0
    return-void

    .line 515
    :cond_0
    if-nez p1, :cond_1

    .line 516
    const-string v2, "NetworkController"

    const-string v3, "onServiceStateChangedExtBySlot: service state is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    .line 521
    .local v0, dm:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    if-nez v0, :cond_2

    .line 522
    const-string v2, "NetworkController"

    const-string v3, "onServiceStateChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 528
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    if-ne p1, v2, :cond_4

    :cond_3
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p2, v2, :cond_7

    .line 531
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 532
    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SrvState]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$700(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    .line 538
    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    .line 539
    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 540
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    .line 541
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    .line 545
    :cond_6
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 543
    :cond_7
    :try_start_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SrvState]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] same state??"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    .locals 0
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 497
    return-void
.end method

.method public onSignalStrengthsChangedExtBySlot(Landroid/telephony/SignalStrength;II)V
    .locals 6
    .parameter "signalStrength"
    .parameter "phoneType"
    .parameter "phoneSlot"

    .prologue
    .line 659
    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    .line 660
    .local v1, slot:I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 661
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalStrengthsChangedExtBySlot: wrong phoneSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_0
    return-void

    .line 665
    :cond_0
    if-nez p1, :cond_1

    .line 666
    const-string v2, "NetworkController"

    const-string v3, "onSignalStrengthsChangedExtBySlot: signalStength is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    .line 671
    .local v0, dm:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    if-nez v0, :cond_2

    .line 672
    const-string v2, "NetworkController"

    const-string v3, "onSignalStrengthsChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 678
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    if-ne p1, v2, :cond_3

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p2, v2, :cond_6

    .line 681
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 682
    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Strength]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$700(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    .line 688
    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    .line 689
    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 691
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    .line 692
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    .line 696
    :cond_5
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 694
    :cond_6
    :try_start_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Strength]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] same state??"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
