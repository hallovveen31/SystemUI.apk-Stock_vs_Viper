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

    .prologue
    .line 58
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>()V

    .line 62
    const v7, 0x7f0204b9

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneIconId:I

    .line 67
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    .line 68
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    .line 69
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    .line 71
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    .line 73
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    .line 77
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mInetCondition:I

    .line 79
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    .line 80
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    .line 84
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSignalClusters:Ljava/util/ArrayList;

    .line 92
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;

    .line 96
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    .line 138
    new-array v7, v10, [Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    .line 486
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 186
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    .line 187
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    .line 189
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHasMobileDataFeature:Z

    .line 192
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhone:Landroid/telephony/TelephonyManager;

    .line 193
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v9, 0x200001e1

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 202
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    .line 203
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 204
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    invoke-direct {v8, v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;)V

    aput-object v8, v7, v2

    .line 205
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v7, v7, v2

    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;

    invoke-direct {v8, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v7, :cond_1

    .line 210
    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 211
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v6

    .line 212
    .local v6, wifiMessenger:Landroid/os/Messenger;
    if-eqz v6, :cond_1

    .line 213
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 214
    .local v3, wifiChannel:Lcom/android/internal/util/AsyncChannel;
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;Lcom/android/internal/util/AsyncChannel;)V

    .line 239
    .local v4, wifiHandler:Landroid/os/Handler;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v4, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 244
    .end local v3           #wifiChannel:Lcom/android/internal/util/AsyncChannel;
    .end local v4           #wifiHandler:Landroid/os/Handler;
    .end local v5           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v6           #wifiMessenger:Landroid/os/Messenger;
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v7, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v7, "android.net.conn.preferPhoneTypeChange"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v7, "com.htc.android.ModemLoggingNotify"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v0, carFilter:Landroid/content/IntentFilter;
    const-string v7, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v7, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v7, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {p1, p0, v0, v7, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateAirplaneMode()V

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    return-object v0
.end method

.method static synthetic access$1000(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getDataStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getDataActivityName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateSimStateBySlot(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    return-void
.end method

.method static synthetic access$600(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->phoneSlot2Slot(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->recoveryPhoneType(II)V

    return-void
.end method

.method static synthetic access$900(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getCallStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private broadcastSignalStrengthIntent()V
    .locals 6

    .prologue
    .line 982
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v1, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 986
    .local v1, level1:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v2, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 988
    .local v2, level2:I
    const-string v3, "level"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 989
    const-string v3, "level_slot2"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 993
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 994
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
    .parameter

    .prologue
    .line 1116
    .line 1118
    packed-switch p0, :pswitch_data_0

    .line 1129
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

    .line 1133
    :goto_0
    return-object v0

    .line 1120
    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    .line 1123
    :pswitch_1
    const-string v0, "RINGING"

    goto :goto_0

    .line 1126
    :pswitch_2
    const-string v0, "OFFHOOK"

    goto :goto_0

    .line 1118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static final getDataActivityName(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1064
    .line 1066
    packed-switch p0, :pswitch_data_0

    .line 1083
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

    .line 1087
    :goto_0
    return-object v0

    .line 1068
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 1071
    :pswitch_1
    const-string v0, "IN"

    goto :goto_0

    .line 1074
    :pswitch_2
    const-string v0, "OUT"

    goto :goto_0

    .line 1077
    :pswitch_3
    const-string v0, "INOUT"

    goto :goto_0

    .line 1080
    :pswitch_4
    const-string v0, "DORMANT"

    goto :goto_0

    .line 1066
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
    .parameter

    .prologue
    .line 1091
    .line 1093
    packed-switch p0, :pswitch_data_0

    .line 1108
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

    .line 1112
    :goto_0
    return-object v0

    .line 1095
    :pswitch_0
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 1098
    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 1101
    :pswitch_2
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 1104
    :pswitch_3
    const-string v0, "SUSPENDED"

    goto :goto_0

    .line 1093
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
    .parameter

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f020342

    const v3, 0x7f020335

    const v2, 0x7f020009

    const v4, 0x7f020005

    .line 1165
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mConnectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v5

    iget v6, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    if-ne v5, v6, :cond_0

    const/4 v0, 0x1

    .line 1166
    :cond_0
    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCombinedRadioTechnology()I

    move-result v5

    .line 1168
    packed-switch v5, :pswitch_data_0

    .line 1204
    :pswitch_0
    if-eqz v0, :cond_13

    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 1170
    :pswitch_1
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1172
    :pswitch_2
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v3, :cond_3

    .line 1173
    if-eqz v0, :cond_2

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 1175
    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f02033f

    goto :goto_1

    :cond_4
    const v0, 0x7f020008

    goto :goto_1

    .line 1178
    :pswitch_3
    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_1

    .line 1182
    :pswitch_4
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-eqz v1, :cond_7

    .line 1183
    if-eqz v0, :cond_6

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_3

    .line 1185
    :cond_7
    if-eqz v0, :cond_8

    const v0, 0x7f020333

    goto :goto_1

    :cond_8
    const v0, 0x7f02000b

    goto :goto_1

    .line 1188
    :pswitch_5
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-eqz v1, :cond_a

    .line 1189
    if-eqz v0, :cond_9

    :goto_4
    move v0, v3

    goto :goto_1

    :cond_9
    move v3, v4

    goto :goto_4

    .line 1190
    :cond_a
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v1, :cond_c

    .line 1191
    if-eqz v0, :cond_b

    const v0, 0x7f02050f

    goto :goto_1

    :cond_b
    const v0, 0x7f020067

    goto :goto_1

    .line 1193
    :cond_c
    if-eqz v0, :cond_d

    const v0, 0x7f020333

    goto :goto_1

    :cond_d
    const v0, 0x7f02000b

    goto :goto_1

    .line 1196
    :pswitch_6
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v1, :cond_f

    .line 1197
    if-eqz v0, :cond_e

    const v0, 0x7f02033b

    goto :goto_1

    :cond_e
    const v0, 0x7f020007

    goto :goto_1

    .line 1198
    :cond_f
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SHOW_4G_FOR_LTE:Z

    if-eqz v1, :cond_11

    .line 1199
    if-eqz v0, :cond_10

    const v0, 0x7f020339

    goto :goto_1

    :cond_10
    const v0, 0x7f020006

    goto :goto_1

    .line 1201
    :cond_11
    if-eqz v0, :cond_12

    const v0, 0x7f020348

    goto :goto_1

    :cond_12
    const v0, 0x7f02000c

    goto :goto_1

    :cond_13
    move v1, v2

    .line 1204
    goto :goto_0

    .line 1168
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
    .parameter

    .prologue
    .line 1037
    .line 1039
    packed-switch p0, :pswitch_data_0

    .line 1056
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

    .line 1060
    :goto_0
    return-object v0

    .line 1041
    :pswitch_1
    const-string v0, "NONE"

    goto :goto_0

    .line 1044
    :pswitch_2
    const-string v0, "GSM"

    goto :goto_0

    .line 1047
    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    .line 1050
    :pswitch_4
    const-string v0, "SIP"

    goto :goto_0

    .line 1053
    :pswitch_5
    const-string v0, "SUB-GSM"

    goto :goto_0

    .line 1039
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
    .parameter

    .prologue
    .line 1137
    .line 1139
    packed-switch p0, :pswitch_data_0

    .line 1157
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

    .line 1161
    :goto_0
    return-object v0

    .line 1141
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 1144
    :pswitch_1
    const-string v0, "PIN_REQUIRED"

    goto :goto_0

    .line 1147
    :pswitch_2
    const-string v0, "PUK_REQUIRED"

    goto :goto_0

    .line 1150
    :pswitch_3
    const-string v0, "NET_PIN_LOCKED"

    goto :goto_0

    .line 1153
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 1139
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
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 911
    if-nez p0, :cond_1

    .line 913
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
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 905
    if-nez p0, :cond_1

    .line 907
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

    .prologue
    .line 897
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

    .prologue
    .line 901
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
    .parameter "state"

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, noSim:Z
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 919
    const/4 v0, 0x1

    .line 921
    :cond_0
    return v0
.end method

.method private static final isSimLock(I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, lock:Z
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 929
    :cond_0
    const/4 v0, 0x1

    .line 931
    :cond_1
    return v0
.end method

.method private static final isSimReady(I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, ready:Z
    if-eqz p0, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    .line 938
    :cond_0
    const/4 v0, 0x1

    .line 940
    :cond_1
    return v0
.end method

.method private static final phoneSlot2Slot(I)I
    .locals 1
    .parameter "phoneSlot"

    .prologue
    .line 889
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
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v4, v0, p2

    .line 1004
    if-nez p2, :cond_2

    .line 1005
    iget v0, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v0, v5, :cond_6

    if-ne p1, v1, :cond_6

    move v0, v1

    .line 1007
    :goto_0
    iget v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v3, v1, :cond_7

    if-ne p1, v5, :cond_7

    move v3, v1

    .line 1009
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v0, v0, v1

    .line 1011
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->slot2PhoneSlot(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 1012
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_1

    .line 1013
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 1015
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    .line 1016
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

    .line 1019
    :cond_2
    if-ne p2, v1, :cond_5

    .line 1020
    iget v0, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v0, v1, :cond_8

    if-ne p1, v7, :cond_8

    move v0, v1

    .line 1022
    :goto_2
    iget v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    if-ne v3, v7, :cond_9

    if-ne p1, v1, :cond_9

    .line 1024
    :goto_3
    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    .line 1025
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v0, v0, v2

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->slot2PhoneSlot(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/service/HtcTelephonyManager;->getCurrentSlotPhoneType(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 1027
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    .line 1028
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 1030
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    .line 1031
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

    .line 1034
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 1005
    goto/16 :goto_0

    :cond_7
    move v3, v2

    .line 1007
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 1020
    goto :goto_2

    :cond_9
    move v1, v2

    .line 1022
    goto :goto_3
.end method

.method private static final slot2PhoneSlot(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 893
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

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 701
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    .line 703
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

    .line 704
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 701
    goto :goto_0
.end method

.method private updateFakeUI(ZII)V
    .locals 5
    .parameter "fake"
    .parameter "slot"
    .parameter "timeout"

    .prologue
    .line 957
    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    .line 958
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

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v0, v1, p2

    .line 963
    .local v0, dm:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    if-nez v0, :cond_2

    .line 964
    const-string v1, "NetworkController"

    const-string v2, "updateFakeUI: dm is null??"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    if-eq v1, p1, :cond_0

    .line 969
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 970
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

    .line 973
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 974
    if-eqz p1, :cond_4

    .line 975
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    int-to-long v3, p3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 977
    :cond_4
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    goto :goto_0

    .line 970
    :cond_5
    const-string v1, "Stop!"

    goto :goto_1
.end method

.method private updateIconBySlot(I)V
    .locals 11
    .parameter

    .prologue
    const v9, 0x7f020023

    const/4 v4, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1213
    if-lt p1, v8, :cond_1

    .line 1214
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

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v5, v0, p1

    .line 1219
    if-nez v5, :cond_2

    .line 1220
    const-string v0, "NetworkController"

    const-string v1, "updateIconBySlot: dm is null??"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1225
    :cond_2
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    if-nez v0, :cond_3

    .line 1227
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    .line 1228
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    .line 1229
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1230
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    .line 1231
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    .line 1232
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    .line 1233
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    .line 1234
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    .line 1235
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    .line 1239
    :cond_3
    iget v6, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 1241
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1243
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1244
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    .line 1245
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1246
    const v0, 0x7f02046a

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 1247
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 1587
    :goto_1
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    if-eq v6, v0, :cond_0

    .line 1588
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->broadcastSignalStrengthIntent()V

    goto :goto_0

    .line 1248
    :cond_4
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimLock(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1250
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1251
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    .line 1252
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1253
    const v0, 0x7f0204bb

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 1254
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto :goto_1

    .line 1255
    :cond_5
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimReady(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1262
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->hasDataRegService(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 1263
    :goto_2
    if-nez v0, :cond_8

    .line 1267
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1268
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    .line 1416
    :cond_6
    :goto_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1e

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->hasVoiceRegService(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 1417
    :goto_4
    if-nez v0, :cond_25

    .line 1422
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    packed-switch v0, :pswitch_data_0

    .line 1448
    :pswitch_0
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1449
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 1450
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 1451
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

    .line 1262
    goto :goto_2

    .line 1275
    :cond_8
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    if-eq v0, v8, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    invoke-virtual {v0, v3}, Lcom/htc/service/HtcTelephonyManager;->htcModemLinkOnExt(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1277
    :cond_9
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1278
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    packed-switch v0, :pswitch_data_1

    .line 1355
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_1b

    .line 1356
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    .line 1363
    :goto_5
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    packed-switch v0, :pswitch_data_2

    .line 1371
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    aget v0, v0, v2

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    .line 1376
    :goto_6
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    if-ne v0, v8, :cond_6

    .line 1377
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v0, v8, :cond_a

    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-ne v0, v1, :cond_6

    .line 1379
    :cond_a
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    goto :goto_3

    .line 1281
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_b

    .line 1282
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    .line 1284
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    .line 1289
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_c

    .line 1290
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    .line 1291
    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v0, :cond_d

    .line 1292
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    .line 1294
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_E:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    .line 1298
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    .line 1303
    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_11

    .line 1304
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_f

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 1305
    :goto_7
    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_2G:[[I

    aget-object v0, v0, v2

    :goto_8
    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    :cond_e
    move v0, v2

    .line 1304
    goto :goto_7

    :cond_f
    move v0, v2

    goto :goto_7

    .line 1305
    :cond_10
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_CDMA_1X:[[I

    aget-object v0, v0, v2

    goto :goto_8

    .line 1308
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_CDMA_1X:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto :goto_5

    .line 1315
    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->MMR_PROJECT:Z

    if-eqz v0, :cond_13

    .line 1316
    :cond_12
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1318
    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_EV:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1325
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_15

    .line 1326
    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1328
    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_H:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1332
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v0, :cond_16

    .line 1333
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_4GLTE:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1334
    :cond_16
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SHOW_4G_FOR_LTE:Z

    if-eqz v0, :cond_17

    .line 1335
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_4G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1337
    :cond_17
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_LTE:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1342
    :pswitch_9
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_19

    .line 1343
    :cond_18
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_3G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1344
    :cond_19
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    if-eqz v0, :cond_1a

    .line 1345
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_HPLUS:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1347
    :cond_1a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_H:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1358
    :cond_1b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    goto/16 :goto_5

    .line 1367
    :pswitch_a
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    aget v0, v0, v3

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_6

    .line 1385
    :cond_1c
    iget v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    packed-switch v0, :pswitch_data_3

    .line 1404
    :pswitch_b
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1405
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    .line 1406
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

    .line 1387
    :pswitch_c
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1388
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_3

    .line 1393
    :pswitch_d
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-nez v0, :cond_1d

    .line 1395
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1396
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getGSMDataCapabilityIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;)I

    move-result v0

    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_3

    .line 1399
    :cond_1d
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 1400
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto/16 :goto_3

    :cond_1e
    move v0, v2

    .line 1416
    goto/16 :goto_4

    .line 1424
    :pswitch_e
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1425
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_1f

    .line 1426
    iput v9, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 1431
    :goto_9
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    .line 1428
    :cond_1f
    if-nez p1, :cond_20

    const v0, 0x7f020492

    :goto_a
    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    goto :goto_9

    :cond_20
    const v0, 0x7f0204a3

    goto :goto_a

    .line 1435
    :pswitch_f
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1436
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isDeviceCapabilityCdma()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1437
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v0, :cond_21

    .line 1438
    iput v9, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 1445
    :goto_b
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    .line 1440
    :cond_21
    if-nez p1, :cond_22

    const v0, 0x7f020492

    :goto_c
    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    goto :goto_b

    :cond_22
    const v0, 0x7f0204a3

    goto :goto_c

    .line 1443
    :cond_23
    if-nez p1, :cond_24

    const v0, 0x7f020013

    :goto_d
    iput v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    goto :goto_b

    :cond_24
    const v0, 0x7f02001a

    goto :goto_d

    .line 1459
    :cond_25
    const/4 v3, 0x0

    .line 1460
    const/4 v0, -0x1

    .line 1461
    iget v7, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    packed-switch v7, :pswitch_data_4

    .line 1561
    :pswitch_10
    iput-boolean v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1562
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

    .line 1566
    :goto_e
    iget-boolean v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    if-eqz v3, :cond_48

    .line 1567
    if-eqz v0, :cond_26

    array-length v3, v0

    if-lt v1, v3, :cond_26

    .line 1568
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

    .line 1569
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 1571
    :cond_26
    if-gez v1, :cond_27

    .line 1572
    const-string v1, "NetworkController"

    const-string v3, "iconLevel < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1575
    :cond_27
    if-eqz v0, :cond_28

    aget v2, v0, v1

    :cond_28
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 1576
    iput v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    .line 1463
    :pswitch_11
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1464
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4b

    .line 1465
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    .line 1470
    :goto_f
    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v3, v8, :cond_29

    iget v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v3, v1, :cond_29

    .line 1472
    iget-object v3, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    packed-switch v3, :pswitch_data_5

    :cond_29
    :pswitch_12
    move v1, v2

    .line 1481
    :pswitch_13
    if-eqz v1, :cond_37

    .line 1482
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2d

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v1

    .line 1483
    :goto_10
    if-le v1, v4, :cond_2a

    .line 1485
    const-string v1, "NetworkController"

    const-string v3, "evdoLevel is too large!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1487
    :cond_2a
    if-gez v1, :cond_2b

    .line 1489
    const-string v1, "NetworkController"

    const-string v3, "evdolevel < 0!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1493
    :cond_2b
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v3, :cond_30

    .line 1494
    if-eqz v0, :cond_2e

    .line 1495
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_3G_R:[I

    goto/16 :goto_e

    :cond_2c
    move v0, v2

    .line 1465
    goto :goto_f

    :cond_2d
    move v1, v2

    .line 1482
    goto :goto_10

    .line 1498
    :cond_2e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_3G_1X:[[I

    aget-object v1, v0, v1

    .line 1499
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

    .line 1501
    :cond_30
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-nez v3, :cond_31

    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->MMR_PROJECT:Z

    if-eqz v3, :cond_34

    .line 1502
    :cond_31
    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_3G_1X_R:[[I

    aget-object v0, v0, v1

    .line 1504
    :goto_12
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_33

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    .line 1502
    :cond_32
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_3G_1X:[[I

    aget-object v0, v0, v1

    goto :goto_12

    :cond_33
    move v1, v2

    .line 1504
    goto/16 :goto_e

    .line 1506
    :cond_34
    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_EV_1X_R:[[I

    aget-object v0, v0, v1

    .line 1508
    :goto_13
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_36

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    .line 1506
    :cond_35
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_EV_1X:[[I

    aget-object v0, v0, v1

    goto :goto_13

    :cond_36
    move v1, v2

    .line 1508
    goto/16 :goto_e

    .line 1511
    :cond_37
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v1, :cond_3a

    .line 1512
    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_2G_R:[I

    .line 1514
    :goto_14
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_39

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    .line 1512
    :cond_38
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_1X:[I

    goto :goto_14

    :cond_39
    move v1, v2

    .line 1514
    goto/16 :goto_e

    .line 1516
    :cond_3a
    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_1X_R:[I

    .line 1518
    :goto_15
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_3c

    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v1

    goto/16 :goto_e

    .line 1516
    :cond_3b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_CDMA_1X:[I

    goto :goto_15

    :cond_3c
    move v1, v2

    .line 1518
    goto/16 :goto_e

    .line 1524
    :pswitch_14
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 1525
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4a

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    iget v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcTelephonyManager;->isNetworkRoamingExt(I)Z

    move-result v0

    .line 1528
    :goto_16
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isDeviceCapabilityCdma()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1530
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v1, :cond_3f

    .line 1531
    iget-object v1, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCombinedRadioTechnology()I

    move-result v1

    .line 1532
    sparse-switch v1, :sswitch_data_0

    .line 1543
    if-eqz v0, :cond_3e

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_2G_R:[I

    .line 1558
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

    .line 1538
    :sswitch_0
    if-eqz v0, :cond_3d

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_3G_R:[I

    goto :goto_17

    :cond_3d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_3G:[I

    goto :goto_17

    .line 1543
    :cond_3e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_4LEVEL_2G:[I

    goto :goto_17

    .line 1546
    :cond_3f
    if-nez p1, :cond_41

    .line 1547
    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_4LEVEL_R:[I

    goto :goto_17

    :cond_40
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_4LEVEL:[I

    goto :goto_17

    .line 1549
    :cond_41
    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_4LEVEL_R:[I

    goto :goto_17

    :cond_42
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_4LEVEL:[I

    goto :goto_17

    .line 1552
    :cond_43
    if-nez p1, :cond_45

    .line 1553
    if-eqz v0, :cond_44

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_5LEVEL_R:[I

    goto :goto_17

    :cond_44
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S1_5LEVEL:[I

    goto :goto_17

    .line 1555
    :cond_45
    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_5LEVEL_R:[I

    goto :goto_17

    :cond_46
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsDual;->HTC_SIGNAL_S2_5LEVEL:[I

    goto :goto_17

    :cond_47
    move v1, v2

    .line 1558
    goto/16 :goto_e

    .line 1578
    :cond_48
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 1579
    iput v2, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto/16 :goto_1

    .line 1583
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

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 1278
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

    .line 1363
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 1385
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 1461
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_14
    .end packed-switch

    .line 1472
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

    .line 1532
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
    .parameter "slot"

    .prologue
    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, change:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v1, v4, p1

    .line 946
    .local v1, dm:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->slot2PhoneSlot(I)I

    move-result v2

    .line 947
    .local v2, phoneSlot:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mPhoneManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v4, v2}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v3

    .line 948
    .local v3, state:I
    iget v4, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    if-eq v3, v4, :cond_0

    .line 949
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

    .line 950
    iput v3, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    .line 951
    const/4 v0, 0x1

    .line 953
    :cond_0
    return v0
.end method

.method private updateWifiIcon()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    if-eqz v0, :cond_5

    .line 761
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_SIGNAL_STRENGTH_ACTIVITY:[[I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    aget-object v0, v2, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivity:I

    aget v0, v0, v2

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    .line 764
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->QS_WIFI_SIGNAL_STRENGTH:[[I

    aget-object v2, v0, v1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_2
    aget v0, v2, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    .line 772
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-nez v0, :cond_0

    .line 773
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivity:I

    .line 775
    :cond_0
    return-void

    .line 761
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

    .line 764
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    goto :goto_2

    .line 766
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0204d9

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    .line 769
    const v0, 0x7f0200e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    goto :goto_3

    .line 766
    :cond_6
    const v0, 0x7f0204d0

    goto :goto_5
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 709
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 711
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiEnabled:Z

    .line 713
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiEnabled:Z

    if-nez v5, :cond_0

    .line 715
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    .line 717
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

    .line 755
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v6

    .line 711
    goto :goto_0

    .line 718
    :cond_3
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 719
    const-string v7, "newRssi"

    const/16 v8, -0xc8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 720
    .local v4, newWifiRssi:I
    const-string v7, "frequency"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 721
    .local v1, frequency:I
    sget v7, Lcom/android/systemui/statusbar/policy/WifiIconsDual;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v7, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v3

    .line 722
    .local v3, newWifiLevel:I
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

    .line 725
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_OFFLOAD:Z

    if-eqz v7, :cond_4

    const/16 v7, -0xc7

    if-ne v4, v7, :cond_4

    .line 726
    const/4 v3, -0x1

    .line 728
    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiRssi:I

    .line 729
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiLevel:I

    .line 730
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    if-eq v3, v7, :cond_1

    .line 731
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    .line 732
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_OFFLOAD:Z

    if-nez v7, :cond_5

    .line 733
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    goto/16 :goto_1

    .line 736
    :cond_5
    if-ne v3, v10, :cond_7

    .line 737
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    .line 738
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiActivityEnabled:Z

    if-eqz v5, :cond_6

    const v5, 0x7f0204d9

    :goto_2
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    .line 741
    const v5, 0x7f0200e6

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    goto/16 :goto_1

    .line 738
    :cond_6
    const v5, 0x7f0204d0

    goto :goto_2

    .line 743
    :cond_7
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    .line 744
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    goto/16 :goto_1

    .line 748
    .end local v1           #frequency:I
    .end local v3           #newWifiLevel:I
    .end local v4           #newWifiRssi:I
    :cond_8
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 749
    const-string v7, "networkInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 750
    .local v2, info:Landroid/net/NetworkInfo;
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

    .line 751
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    .line 752
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    if-nez v5, :cond_9

    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    .line 753
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiIcon()V

    goto/16 :goto_1

    :cond_a
    move v5, v6

    .line 751
    goto :goto_3
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;)V

    .line 280
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 806
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 850
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 852
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 854
    const-string v0, "  mLastWifiVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 856
    const-string v0, "  mWifiVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 858
    const-string v0, "  mLastWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 860
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 862
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

    .line 864
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

    .line 866
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 869
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 873
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 874
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 876
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 881
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 877
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 878
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 881
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 7
    .parameter "cb"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 422
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    const-string v1, "notifySignalsChangedCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQSWifiIconId:I

    move-object v0, p1

    move v4, v3

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 425
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, action:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;

    monitor-enter v7

    .line 431
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

    .line 434
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateWifiState(Landroid/content/Intent;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    .line 481
    :cond_1
    :goto_0
    monitor-exit v7

    .line 482
    return-void

    .line 436
    :cond_2
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 438
    :cond_3
    const/4 v1, 0x0

    .line 439
    .local v1, change:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_5

    .line 440
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateSimStateBySlot(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 441
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    .line 442
    const/4 v1, 0x1

    .line 439
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    .line 481
    .end local v1           #change:Z
    .end local v2           #i:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 446
    :cond_6
    :try_start_1
    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 447
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

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    .line 452
    :cond_7
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    .line 454
    :cond_8
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateAirplaneMode()V

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    .line 457
    :cond_9
    const-string v8, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 458
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto :goto_0

    .line 460
    :cond_a
    const-string v8, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 461
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    goto/16 :goto_0

    .line 462
    :cond_b
    const-string v8, "android.net.conn.preferPhoneTypeChange"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 463
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

    .line 465
    :cond_c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v10, :cond_e

    .line 466
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 463
    .end local v2           #i:I
    :cond_d
    const-string v6, "NA"

    goto :goto_2

    .line 468
    .restart local v2       #i:I
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    goto/16 :goto_0

    .line 469
    .end local v2           #i:I
    :cond_f
    const-string v8, "com.htc.android.ModemLoggingNotify"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 470
    const-string v8, "Status"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_10

    .line 471
    .local v5, reset:Z
    :goto_4
    const-string v6, "phone_type"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 472
    .local v4, phoneType:I
    const-string v6, "phone_slot"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 474
    .local v3, phoneSlot:I
    if-nez v4, :cond_11

    .line 475
    const/4 v6, 0x0

    const v8, 0xea60

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateFakeUI(ZII)V

    .line 476
    const/4 v6, 0x1

    const v8, 0xea60

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateFakeUI(ZII)V

    goto/16 :goto_0

    .end local v3           #phoneSlot:I
    .end local v4           #phoneType:I
    .end local v5           #reset:Z
    :cond_10
    move v5, v6

    .line 470
    goto :goto_4

    .line 478
    .restart local v3       #phoneSlot:I
    .restart local v4       #phoneType:I
    .restart local v5       #reset:Z
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
    .parameter "cluster"

    .prologue
    const v13, 0x7f020023

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 284
    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-ne v8, v9, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-eq v8, v9, :cond_1

    .line 285
    :cond_0
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    invoke-interface {p1, v8, v9, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 288
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eq v8, v9, :cond_2

    .line 289
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneIconId:I

    invoke-interface {p1, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 296
    :cond_2
    new-array v0, v10, [Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    .line 297
    .local v0, dm:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v10, :cond_3

    .line 298
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    invoke-direct {v8, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;)V

    aput-object v8, v0, v5

    .line 301
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    .line 302
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 303
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    .line 304
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    .line 305
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    .line 306
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    .line 307
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    .line 308
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    .line 311
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 312
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    .line 313
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    .line 316
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 317
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 318
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    iput v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 321
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    .line 322
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    iput-object v9, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 325
    :cond_3
    aget-object v1, v0, v7

    .line 326
    .local v1, dm1:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    aget-object v2, v0, v11

    .line 330
    .local v2, dm2:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isDualSimSingleStandby()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 331
    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    if-ne v8, v11, :cond_9

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v8, v10, :cond_4

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-ne v8, v11, :cond_9

    .line 334
    :cond_4
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v8, :cond_7

    .line 335
    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 336
    iput v13, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 337
    iput v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 361
    :cond_5
    :goto_1
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-nez v8, :cond_10

    .line 363
    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimReady(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 364
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 370
    :cond_6
    :goto_2
    const/4 v4, 0x1

    .line 371
    .local v4, dualNoSim:Z
    const/4 v3, 0x1

    .line 372
    .local v3, dualLock:Z
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_e

    .line 373
    aget-object v8, v0, v5

    iget v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v8

    and-int/2addr v4, v8

    .line 374
    aget-object v8, v0, v5

    iget v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimLock(I)Z

    move-result v8

    and-int/2addr v3, v8

    .line 372
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 338
    .end local v3           #dualLock:Z
    .end local v4           #dualNoSim:Z
    :cond_7
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-eqz v8, :cond_8

    .line 339
    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    if-ne v8, v10, :cond_5

    .line 340
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getGSMDataCapabilityIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;)I

    move-result v8

    iput v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto :goto_1

    .line 342
    :cond_8
    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    goto :goto_1

    .line 344
    :cond_9
    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-eq v8, v10, :cond_a

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    if-ne v8, v11, :cond_5

    .line 347
    :cond_a
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    if-eqz v8, :cond_b

    .line 348
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 349
    iput v13, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 350
    iput v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    goto :goto_1

    .line 351
    :cond_b
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    if-eqz v8, :cond_c

    .line 352
    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    if-ne v8, v10, :cond_5

    .line 353
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->getGSMDataCapabilityIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;)I

    move-result v8

    iput v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    goto :goto_1

    .line 355
    :cond_c
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    goto :goto_1

    .line 365
    :cond_d
    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isSimReady(I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->isNoSim(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 366
    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    goto :goto_2

    .line 376
    .restart local v3       #dualLock:Z
    .restart local v4       #dualNoSim:Z
    :cond_e
    if-nez v4, :cond_f

    if-eqz v3, :cond_10

    .line 377
    :cond_f
    iput-boolean v11, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 378
    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 383
    .end local v3           #dualLock:Z
    .end local v4           #dualNoSim:Z
    :cond_10
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eqz v8, :cond_11

    .line 384
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_11

    .line 385
    aget-object v8, v0, v5

    iput-boolean v7, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 386
    aget-object v8, v0, v5

    iput-boolean v7, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 390
    :cond_11
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v10, :cond_12

    .line 391
    aget-object v8, v0, v5

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    aget-object v9, v0, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    invoke-interface {p1, v5, v8, v9, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setDataIndicatorsBySlot(IZILjava/lang/String;)V

    .line 392
    aget-object v8, v0, v5

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    aget-object v9, v0, v5

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    invoke-interface {p1, v5, v8, v9, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;->setSignalIndicatorsBySlot(IZILjava/lang/String;)V

    .line 390
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 395
    :cond_12
    check-cast p1, Lcom/android/systemui/statusbar/SignalClusterViewDual;

    .end local p1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->batchApply()V

    .line 398
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mQueryMode:Z

    if-eqz v8, :cond_13

    .line 399
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    if-nez v8, :cond_14

    .line 419
    :cond_13
    :goto_6
    return-void

    .line 400
    :cond_14
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.htc.systemui.UI_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v6, intent:Landroid/content/Intent;
    const-string v8, "slot1_data_visible"

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v8, "slot1_data"

    iget v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v8, "slot1_signal_visible"

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    const-string v8, "slot1_signal"

    iget v9, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const-string v8, "slot2_data_visible"

    iget-boolean v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string v8, "slot2_data"

    iget v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v8, "slot2_signal_visible"

    iget-boolean v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    const-string v8, "slot2_signal"

    iget v9, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v8, "wifi_visible"

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    const-string v8, "wifi"

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v8, "airplane"

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eqz v9, :cond_15

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneIconId:I

    :cond_15
    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method refreshViews()V
    .locals 5

    .prologue
    .line 780
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eq v3, v4, :cond_1

    .line 781
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 782
    .local v0, cb:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_0

    .line 786
    .end local v0           #cb:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;

    .line 787
    .local v1, cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;)V

    goto :goto_1

    .line 790
    .end local v1           #cluster:Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    if-eq v3, v4, :cond_3

    .line 791
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mAirplaneMode:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastAirplaneMode:Z

    .line 795
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-eq v3, v4, :cond_6

    .line 796
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    if-eq v3, v4, :cond_5

    .line 797
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiIconId:I

    .line 799
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    if-eq v3, v4, :cond_6

    .line 800
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mWifiVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mLastWifiVisible:Z

    .line 803
    :cond_6
    return-void
.end method
