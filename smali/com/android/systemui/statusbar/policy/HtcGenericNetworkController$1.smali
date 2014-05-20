.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcGenericNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneState:I

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$2(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$3(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$4(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$5(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    :cond_1
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataActivity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$5(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$6(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$4(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$5(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    return-void
.end method

.method public onSecondSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2nd SignalStrength: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscNetworkType()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$7(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$3(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    return-void
.end method

.method public onSectorIDIndChanged(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SectorID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSectorId:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$8(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v2, "TelephonyCallback"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataNetType:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpState()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$6(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$3(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$4(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$5(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$9(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$1(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    const-string v1, "TelephonyCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SignalStrength: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$3(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    return-void
.end method
