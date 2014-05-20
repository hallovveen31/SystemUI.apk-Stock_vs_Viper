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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChangedExt(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onCallStateChangedExtBySlot(ILjava/lang/String;II)V
    .locals 6

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    if-nez v0, :cond_1

    const-string v2, "NetworkController"

    const-string v3, "onCallStateChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    if-ne p1, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p3, v2, :cond_5

    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_3

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

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p3, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    iput p3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

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

    return-void
.end method

.method public onDataActivityExtBySlot(III)V
    .locals 6

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    if-nez v0, :cond_1

    const-string v2, "NetworkController"

    const-string v3, "onDataActivityExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    if-ne p1, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p2, v2, :cond_5

    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_3

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

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

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

    return-void
.end method

.method public onDataConnectionStateChangedExtBySlot(IIII)V
    .locals 6

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    if-nez v0, :cond_1

    const-string v2, "NetworkController"

    const-string v3, "onDataConnectionStateChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    if-ne p1, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    if-ne p2, v2, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p3, v2, :cond_5

    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_3

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

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p3, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    iput p3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

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

    return-void
.end method

.method public onServiceStateChangedExtBySlot(Landroid/telephony/ServiceState;II)V
    .locals 6

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

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

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "NetworkController"

    const-string v3, "onServiceStateChangedExtBySlot: service state is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    if-nez v0, :cond_2

    const-string v2, "NetworkController"

    const-string v3, "onServiceStateChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    if-ne p1, v2, :cond_4

    :cond_3
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p2, v2, :cond_7

    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_5

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

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

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

    return-void
.end method

.method public onSignalStrengthsChangedExtBySlot(Landroid/telephony/SignalStrength;II)V
    .locals 6

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I
    invoke-static {p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$600(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

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

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "NetworkController"

    const-string v3, "onSignalStrengthsChangedExtBySlot: signalStength is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v2

    aget-object v0, v2, v1

    if-nez v0, :cond_2

    const-string v2, "NetworkController"

    const-string v3, "onSignalStrengthsChangedExtBySlot: dm is null??"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    if-ne p1, v2, :cond_3

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-eq p2, v2, :cond_6

    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v2, :cond_4

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

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V
    invoke-static {v2, p2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

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
