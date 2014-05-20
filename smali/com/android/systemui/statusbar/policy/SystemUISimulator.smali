.class Lcom/android/systemui/statusbar/policy/SystemUISimulator;
.super Ljava/lang/Object;
.source "SystemUISimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;,
        Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;
    }
.end annotation


# instance fields
.field private final HTC_DEBUG:Z

.field private mAirplaneMode:Z

.field private mCallState:I

.field private mController:Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;

.field private mDataActivity:I

.field private mDataState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasCsService:Z

.field private mHasMdmService:Z

.field private mHasPsService:Z

.field private mHasQscService:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMdmNetworkType:I

.field private mModemState:I

.field private mNetworkCountry:Ljava/lang/String;

.field private mNetworkId:I

.field private mNetworkOperator:Ljava/lang/String;

.field private mNetworkType:I

.field private mPhoneType:I

.field private mQscNetworkType:I

.field private mQscSignalLevel:I

.field private mRoamingCdma:I

.field private mRoamingGsm:Z

.field private mSectorId:Ljava/lang/String;

.field private mSignalLevel:I

.field private mSimOperator:Ljava/lang/String;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mUnderSilentReset:I

.field private region:I

.field private sku_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->HTC_DEBUG:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->HTC_DEBUG:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.simulator.action_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/SystemUISimulator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator$1;-><init>(Lcom/android/systemui/statusbar/policy/SystemUISimulator;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.htc.permission.APP_PLATFORM"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SystemUISimulator;)Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mController:Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/SystemUISimulator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkType:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataState:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataActivity:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSignalLevel:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mPhoneType:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkOperator:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimOperator:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingGsm:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingCdma:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mCallState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->sku_id:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mUnderSilentReset:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasMdmService:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasQscService:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mMdmNetworkType:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscNetworkType:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscSignalLevel:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mModemState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->region:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasCsService:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasPsService:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkId:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSectorId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mAirplaneMode:Z

    return p1
.end method


# virtual methods
.method public dump()V
    .locals 3

    const-string v0, "SystemUISimulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simulate(sku_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->sku_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->region:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " airplane="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasCsService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasPsService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mPhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sectorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSectorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkType:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cellOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cellCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roamingGsm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingGsm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roamingCdma="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingCdma:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modemState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mModemState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mdmService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasMdmService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qscService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasQscService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mdmNetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mMdmNetworkType:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qscNetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscNetworkType:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qscSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " silent_reset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mUnderSilentReset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCallState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mCallState:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingCdma:I

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataActivity:I

    return v0
.end method

.method public getDataState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataState:I

    return v0
.end method

.method public getMdmNetworkType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mMdmNetworkType:I

    return v0
.end method

.method public getModemState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mModemState:I

    return v0
.end method

.method public getNetworkCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkId:I

    return v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkType:I

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mPhoneType:I

    return v0
.end method

.method public getQscNetworkType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscNetworkType:I

    return v0
.end method

.method public getQscSignalLevel()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscSignalLevel:I

    return v0
.end method

.method public getRegion()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->region:I

    return v0
.end method

.method public getSectorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSectorId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalLevel()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSignalLevel:I

    return v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getSkuId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->sku_id:I

    return v0
.end method

.method public getUnderSilentReset()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mUnderSilentReset:I

    return v0
.end method

.method public hasCsService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasCsService:Z

    return v0
.end method

.method public hasMdmService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasMdmService:Z

    return v0
.end method

.method public hasPsService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasPsService:Z

    return v0
.end method

.method public hasQscService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasQscService:Z

    return v0
.end method

.method public isAirplaneMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mAirplaneMode:Z

    return v0
.end method

.method public isRoamingGsm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingGsm:Z

    return v0
.end method

.method public register(Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mController:Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;

    return-void
.end method
