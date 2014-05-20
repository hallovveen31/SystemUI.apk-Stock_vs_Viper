.class public Lcom/android/systemui/statusbar/policy/NetworkControllerDual;
.super Lcom/android/systemui/statusbar/policy/NetworkController;
.source "NetworkControllerDual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mAirplaneIconId:I

.field mAirplaneMode:Z

.field private mConnectManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

.field private final mHandler:Landroid/os/Handler;

.field mHasMobileDataFeature:Z

.field private final mInetCondition:I

.field mLastAirplaneMode:Z

.field mLastWifiIconId:I

.field mLastWifiLevel:I

.field mLastWifiVisible:Z

.field final mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mQSWifiIconId:I

.field private mQueryMode:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field mWifiActivityEnabled:Z

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLevel:I

.field mWifiRssi:I

.field mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>()V

    const v7, 0x7f0204b9

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneIconId:I

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mInetCondition:I

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSignalClusters:Ljava/util/ArrayList;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHandler:Landroid/os/Handler;

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    new-array v7, v10, [Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHasMobileDataFeature:Z

    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v9, 0x200001e1

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    invoke-direct {v8, v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;)V

    aput-object v8, v7, v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v7, v7, v2

    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;

    invoke-direct {v8, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v7, :cond_1

    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;Lcom/android/internal/util/AsyncChannel;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v4, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.conn.preferPhoneTypeChange"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.android.ModemLoggingNotify"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {p1, p0, v0, v7, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateAirplaneMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    return-object v0
.end method

.method static synthetic access$1000(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getDataStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getDataActivityName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateSimStateBySlot(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    return-void
.end method

.method static synthetic access$600(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V

    return-void
.end method

.method static synthetic access$900(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getCallStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private broadcastSignalStrengthIntent()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v1, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v2, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    const-string v3, "level"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "level_slot2"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SYSTEMUI_UPDATE_SIGNAL_STRENGTH] level1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " level2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final getCallStateName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "RINGING"

    goto :goto_0

    :pswitch_2
    const-string v0, "OFFHOOK"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static final getDataActivityName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "IN"

    goto :goto_0

    :pswitch_2
    const-string v0, "OUT"

    goto :goto_0

    :pswitch_3
    const-string v0, "INOUT"

    goto :goto_0

    :pswitch_4
    const-string v0, "DORMANT"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static final getDataStateName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DISCONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "CONNECTED"

    goto :goto_0

    :pswitch_3
    const-string v0, "SUSPENDED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getGSMDataCapabilityIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;)I
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f020342

    const v3, 0x7f020335

    const v2, 0x7f020009

    const v4, 0x7f020005

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v5

    iget v6, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    if-ne v5, v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCombinedRadioTechnology()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    if-eqz v0, :cond_13

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_2
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f02033f

    goto :goto_1

    :cond_4
    const v0, 0x7f020008

    goto :goto_1

    :pswitch_3
    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_1

    :pswitch_4
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    const v0, 0x7f020333

    goto :goto_1

    :cond_8
    const v0, 0x7f02000b

    goto :goto_1

    :pswitch_5
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_9

    :goto_4
    move v0, v3

    goto :goto_1

    :cond_9
    move v3, v4

    goto :goto_4

    :cond_a
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    const v0, 0x7f02050f

    goto :goto_1

    :cond_b
    const v0, 0x7f020067

    goto :goto_1

    :cond_c
    if-eqz v0, :cond_d

    const v0, 0x7f020333

    goto :goto_1

    :cond_d
    const v0, 0x7f02000b

    goto :goto_1

    :pswitch_6
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v1, :cond_f

    if-eqz v0, :cond_e

    const v0, 0x7f02033b

    goto :goto_1

    :cond_e
    const v0, 0x7f020007

    goto :goto_1

    :cond_f
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SHOW_4G_FOR_LTE:Z

    if-eqz v1, :cond_11

    if-eqz v0, :cond_10

    const v0, 0x7f020339

    goto :goto_1

    :cond_10
    const v0, 0x7f020006

    goto :goto_1

    :cond_11
    if-eqz v0, :cond_12

    const v0, 0x7f020348

    goto :goto_1

    :cond_12
    const v0, 0x7f02000c

    goto :goto_1

    :cond_13
    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static final getPhoneTypeName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_2
    const-string v0, "GSM"

    goto :goto_0

    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_4
    const-string v0, "SIP"

    goto :goto_0

    :pswitch_5
    const-string v0, "SUB-GSM"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static final getSimStateName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    :pswitch_1
    const-string v0, "PIN_REQUIRED"

    goto :goto_0

    :pswitch_2
    const-string v0, "PUK_REQUIRED"

    goto :goto_0

    :pswitch_3
    const-string v0, "NET_PIN_LOCKED"

    goto :goto_0

    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static final hasDataRegService(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final hasVoiceRegService(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final isDeviceCapabilityCdma()Z
    .locals 1

    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isDualSimSingleStandby()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isNoSim(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final isSimLock(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static final isSimReady(I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static final phoneSlot2Slot(I)I
    .locals 1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private recoveryPhoneType(II)V
    .locals 8

    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v4, v0, p2

    if-nez p2, :cond_2

    iget v0, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v0, v5, :cond_6

    if-ne p1, v1, :cond_6

    move v0, v1

    :goto_0
    iget v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v3, v1, :cond_7

    if-ne p1, v5, :cond_7

    move v3, v1

    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->slot2PhoneSlot(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    const-string v3, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Fake][1]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne p2, v1, :cond_5

    iget v0, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v0, v1, :cond_8

    if-ne p1, v7, :cond_8

    move v0, v1

    :goto_2
    iget v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v3, v7, :cond_9

    if-ne p1, v1, :cond_9

    :goto_3
    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->slot2PhoneSlot(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Fake][0]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method private static final slot2PhoneSlot(I)I
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateFakeUI(ZII)V
    .locals 5

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFakeUI: wrong slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v0, v1, p2

    if-nez v0, :cond_2

    const-string v1, "NetworkController"

    const-string v2, "updateFakeUI: dm is null??"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    if-eq v1, p1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v2, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FakeUI]["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_5

    const-string v1, "Start!"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    int-to-long v3, p3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    goto :goto_0

    :cond_5
    const-string v1, "Stop!"

    goto :goto_1
.end method

.method private updateIconBySlot(I)V
    .locals 11

    const v9, 0x7f020023

    const/4 v4, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v8, :cond_1

    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconBySlot: wrong slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v5, v0, p1

    if-nez v5, :cond_2

    const-string v0, "NetworkController"

    const-string v1, "updateIconBySlot: dm is null??"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    if-nez v0, :cond_3

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    :cond_3
    iget v6, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    const v0, 0x7f02046a

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    :goto_1
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    if-eq v6, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->broadcastSignalStrengthIntent()V

    goto :goto_0

    :cond_4
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimLock(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    const v0, 0x7f0204bb

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto :goto_1

    :cond_5
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimReady(I)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->hasDataRegService(Landroid/telephony/ServiceState;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_8

    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    :cond_6
    :goto_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1e

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->hasVoiceRegService(Landroid/telephony/ServiceState;)Z

    move-result v0

    :goto_4
    if-nez v0, :cond_25

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal icon: Unsupported phoneType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    if-eq v0, v8, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    invoke-virtual {v0, v3}, Lcom/htc/service/HtcTelephonyManager;->htcModemLinkOnExt(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_9
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    :goto_5
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    packed-switch v0, :pswitch_data_2

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    aget v0, v0, v2

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    :goto_6
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    if-ne v0, v8, :cond_6

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v0, v8, :cond_a

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-ne v0, v1, :cond_6

    :cond_a
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    goto :goto_3

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_E:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_11

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_f

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    :goto_8
    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :cond_e
    move v0, v2

    goto :goto_7

    :cond_f
    move v0, v2

    goto :goto_7

    :cond_10
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_CDMA_1X:[[I

    aget-object v0, v0, v2

    goto :goto_8

    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_CDMA_1X:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->MMR_PROJECT:Z

    if-eqz v0, :cond_13

    :cond_12
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_EV:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_15

    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_H:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_4GLTE:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :cond_16
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SHOW_4G_FOR_LTE:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_4G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :cond_17
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_LTE:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :pswitch_9
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_19

    :cond_18
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :cond_19
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_HPLUS:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :cond_1a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_H:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :cond_1b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    :pswitch_a
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    aget v0, v0, v3

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_6

    :cond_1c
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    packed-switch v0, :pswitch_data_3

    :pswitch_b
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    const-string v0, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data icon: Unsupported phoneType "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " for slot "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_c
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_3

    :pswitch_d
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-nez v0, :cond_1d

    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getGSMDataCapabilityIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;)I

    move-result v0

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_3

    :cond_1d
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_3

    :cond_1e
    move v0, v2

    goto/16 :goto_4

    :pswitch_e
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_1f

    iput v9, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    :goto_9
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    :cond_1f
    if-nez p1, :cond_20

    const v0, 0x7f020492

    :goto_a
    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    goto :goto_9

    :cond_20
    const v0, 0x7f0204a3

    goto :goto_a

    :pswitch_f
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isDeviceCapabilityCdma()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_21

    iput v9, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    :goto_b
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    :cond_21
    if-nez p1, :cond_22

    const v0, 0x7f020492

    :goto_c
    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    goto :goto_b

    :cond_22
    const v0, 0x7f0204a3

    goto :goto_c

    :cond_23
    if-nez p1, :cond_24

    const v0, 0x7f020013

    :goto_d
    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    goto :goto_b

    :cond_24
    const v0, 0x7f02001a

    goto :goto_d

    :cond_25
    const/4 v3, 0x0

    const/4 v0, -0x1

    iget v7, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    packed-switch v7, :pswitch_data_4

    :pswitch_10
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    const-string v1, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signal icon: Unsupported phoneType "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " for slot "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    move-object v0, v3

    :goto_e
    iget-boolean v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    if-eqz v3, :cond_48

    if-eqz v0, :cond_26

    array-length v3, v0

    if-lt v1, v3, :cond_26

    const-string v1, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iconLevel >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :cond_26
    if-gez v1, :cond_27

    const-string v1, "NetworkController"

    const-string v3, "iconLevel < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_27
    if-eqz v0, :cond_28

    aget v2, v0, v1

    :cond_28
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    :pswitch_11
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4b

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_f
    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v3, v8, :cond_29

    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v3, v1, :cond_29

    iget-object v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    packed-switch v3, :pswitch_data_5

    :cond_29
    :pswitch_12
    move v1, v2

    :pswitch_13
    if-eqz v1, :cond_37

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2d

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v1

    :goto_10
    if-le v1, v4, :cond_2a

    const-string v1, "NetworkController"

    const-string v3, "evdoLevel is too large!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :cond_2a
    if-gez v1, :cond_2b

    const-string v1, "NetworkController"

    const-string v3, "evdolevel < 0!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_2b
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v3, :cond_30

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_3G_R:[I

    goto/16 :goto_e

    :cond_2c
    move v0, v2

    goto :goto_f

    :cond_2d
    move v1, v2

    goto :goto_10

    :cond_2e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_3G_1X:[[I

    aget-object v1, v0, v1

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_2f

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v0

    :goto_11
    move v10, v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_e

    :cond_2f
    move v0, v2

    goto :goto_11

    :cond_30
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-nez v3, :cond_31

    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->MMR_PROJECT:Z

    if-eqz v3, :cond_34

    :cond_31
    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_3G_1X_R:[[I

    aget-object v0, v0, v1

    :goto_12
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_33

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    :cond_32
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_3G_1X:[[I

    aget-object v0, v0, v1

    goto :goto_12

    :cond_33
    move v1, v2

    goto/16 :goto_e

    :cond_34
    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_EV_1X_R:[[I

    aget-object v0, v0, v1

    :goto_13
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_36

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    :cond_35
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_EV_1X:[[I

    aget-object v0, v0, v1

    goto :goto_13

    :cond_36
    move v1, v2

    goto/16 :goto_e

    :cond_37
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v1, :cond_3a

    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_2G_R:[I

    :goto_14
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_39

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    :cond_38
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_1X:[I

    goto :goto_14

    :cond_39
    move v1, v2

    goto/16 :goto_e

    :cond_3a
    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_1X_R:[I

    :goto_15
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_3c

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    :cond_3b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_1X:[I

    goto :goto_15

    :cond_3c
    move v1, v2

    goto/16 :goto_e

    :pswitch_14
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    iget v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcTelephonyManager;->isNetworkRoamingExt(I)Z

    move-result v0

    :goto_16
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isDeviceCapabilityCdma()Z

    move-result v1

    if-eqz v1, :cond_43

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v1, :cond_3f

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCombinedRadioTechnology()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_2G_R:[I

    :goto_17
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_47

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_47

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_e

    :sswitch_0
    if-eqz v0, :cond_3d

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_3G_R:[I

    goto :goto_17

    :cond_3d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_3G:[I

    goto :goto_17

    :cond_3e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_2G:[I

    goto :goto_17

    :cond_3f
    if-nez p1, :cond_41

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_4LEVEL_R:[I

    goto :goto_17

    :cond_40
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_4LEVEL:[I

    goto :goto_17

    :cond_41
    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_4LEVEL_R:[I

    goto :goto_17

    :cond_42
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_4LEVEL:[I

    goto :goto_17

    :cond_43
    if-nez p1, :cond_45

    if-eqz v0, :cond_44

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_5LEVEL_R:[I

    goto :goto_17

    :cond_44
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_5LEVEL:[I

    goto :goto_17

    :cond_45
    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_5LEVEL_R:[I

    goto :goto_17

    :cond_46
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_5LEVEL:[I

    goto :goto_17

    :cond_47
    move v1, v2

    goto/16 :goto_e

    :cond_48
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    :cond_49
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SIM state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getSimStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4a
    move v0, v2

    goto/16 :goto_16

    :cond_4b
    move v0, v2

    goto/16 :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private updateSimStateBySlot(I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v1, v4, p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->slot2PhoneSlot(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v4, v2}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v3

    iget v4, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    if-eq v3, v4, :cond_0

    const-string v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIM]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getSimStateName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateWifiIcon()V
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_SIGNAL_STRENGTH_ACTIVITY:[[I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    aget-object v0, v2, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    aget v0, v0, v2

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->QS_WIFI_SIGNAL_STRENGTH:[[I

    aget-object v2, v0, v1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_2
    aget v0, v2, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v2, v0, v1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_4
    aget v0, v2, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0204d9

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    const v0, 0x7f0200e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    goto :goto_3

    :cond_6
    const v0, 0x7f0204d0

    goto :goto_5
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiEnabled:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiEnabled:Z

    if-nez v5, :cond_0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    :cond_0
    const-string v5, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWifiState: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "newRssi"

    const/16 v8, -0xc8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "frequency"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget v7, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v7, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v3

    const-string v7, "NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWifiState: action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newRssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " freq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newLevel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lastWifiLevel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " offload="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_OFFLOAD:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_OFFLOAD:Z

    if-eqz v7, :cond_4

    const/16 v7, -0xc7

    if-ne v4, v7, :cond_4

    const/4 v3, -0x1

    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiRssi:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiLevel:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    if-eq v3, v7, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_OFFLOAD:Z

    if-nez v7, :cond_5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    goto/16 :goto_1

    :cond_5
    if-ne v3, v10, :cond_7

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v5, :cond_6

    const v5, 0x7f0204d9

    :goto_2
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    const v5, 0x7f0200e6

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    goto/16 :goto_1

    :cond_6
    const v5, 0x7f0204d0

    goto :goto_2

    :cond_7
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    goto/16 :goto_1

    :cond_8
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "networkInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const-string v7, "NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateConnectivity: type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    if-nez v5, :cond_9

    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    goto/16 :goto_1

    :cond_a
    move v5, v6

    goto :goto_3
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mLastWifiVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWifiVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mLastWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getResourceName(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "(unknown)"

    goto :goto_0

    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    const-string v1, "notifySignalsChangedCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    move-object v0, p1

    move v4, v3

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string v8, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiState(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    :cond_1
    :goto_0
    monitor-exit v7

    return-void

    :cond_2
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_5

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateSimStateBySlot(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_6
    :try_start_1
    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v6, "showSpn"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v8, "spn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "showPlmn"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "plmn"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    :cond_7
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    :cond_8
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateAirplaneMode()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    :cond_9
    const-string v8, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    :cond_a
    const-string v8, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    goto/16 :goto_0

    :cond_b
    const-string v8, "android.net.conn.preferPhoneTypeChange"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v6, :cond_c

    const-string v8, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PreferPhoneType] "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_e

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    const-string v6, "NA"

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto/16 :goto_0

    :cond_f
    const-string v8, "com.htc.android.ModemLoggingNotify"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Status"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_10

    :goto_4
    const-string v6, "phone_type"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "phone_slot"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v4, :cond_11

    const/4 v6, 0x0

    const v8, 0xea60

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateFakeUI(ZII)V

    const/4 v6, 0x1

    const v8, 0xea60

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateFakeUI(ZII)V

    goto/16 :goto_0

    :cond_10
    move v5, v6

    goto :goto_4

    :cond_11
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I

    move-result v6

    const v8, 0xea60

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateFakeUI(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;)V
    .locals 14

    const v13, 0x7f020023

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-ne v8, v9, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-eq v8, v9, :cond_1

    :cond_0
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    invoke-interface {p1, v8, v9, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eq v8, v9, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneIconId:I

    invoke-interface {p1, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setIsAirplaneMode(ZI)V

    :cond_2
    new-array v0, v10, [Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_3

    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    invoke-direct {v8, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;)V

    aput-object v8, v0, v5

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    aget-object v1, v0, v7

    aget-object v2, v0, v11

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isDualSimSingleStandby()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    if-ne v8, v11, :cond_9

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v8, v10, :cond_4

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-ne v8, v11, :cond_9

    :cond_4
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v8, :cond_7

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v13, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    :cond_5
    :goto_1
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-nez v8, :cond_10

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimReady(I)Z

    move-result v8

    if-eqz v8, :cond_d

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    :cond_6
    :goto_2
    const/4 v4, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_e

    aget-object v8, v0, v5

    iget v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v8

    and-int/2addr v4, v8

    aget-object v8, v0, v5

    iget v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimLock(I)Z

    move-result v8

    and-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-eqz v8, :cond_8

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    if-ne v8, v10, :cond_5

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getGSMDataCapabilityIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;)I

    move-result v8

    iput v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto :goto_1

    :cond_8
    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    goto :goto_1

    :cond_9
    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v8, v10, :cond_a

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-ne v8, v11, :cond_5

    :cond_a
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v8, :cond_b

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v13, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto :goto_1

    :cond_b
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-eqz v8, :cond_c

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    if-ne v8, v10, :cond_5

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getGSMDataCapabilityIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;)I

    move-result v8

    iput v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto :goto_1

    :cond_c
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    goto :goto_1

    :cond_d
    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimReady(I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    goto :goto_2

    :cond_e
    if-nez v4, :cond_f

    if-eqz v3, :cond_10

    :cond_f
    iput-boolean v11, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    :cond_10
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eqz v8, :cond_11

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_11

    aget-object v8, v0, v5

    iput-boolean v7, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    aget-object v8, v0, v5

    iput-boolean v7, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_11
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v10, :cond_12

    aget-object v8, v0, v5

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    aget-object v9, v0, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    invoke-interface {p1, v5, v8, v9, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setDataIndicatorsBySlot(IZILjava/lang/String;)V

    aget-object v8, v0, v5

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    aget-object v9, v0, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    invoke-interface {p1, v5, v8, v9, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setSignalIndicatorsBySlot(IZILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_12
    check-cast p1, Lcom/android/systemui/statusbar/SignalClusterViewDual;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->batchApply()V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    if-nez v8, :cond_14

    :cond_13
    :goto_6
    return-void

    :cond_14
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.htc.systemui.UI_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "slot1_data_visible"

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "slot1_data"

    iget v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "slot1_signal_visible"

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "slot1_signal"

    iget v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "slot2_data_visible"

    iget-boolean v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "slot2_data"

    iget v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "slot2_signal_visible"

    iget-boolean v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "slot2_signal"

    iget v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "wifi_visible"

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "wifi"

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "airplane"

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eqz v9, :cond_15

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneIconId:I

    :cond_15
    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method refreshViews()V
    .locals 5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;)V

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-eq v3, v4, :cond_6

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-eq v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    :cond_6
    return-void
.end method
