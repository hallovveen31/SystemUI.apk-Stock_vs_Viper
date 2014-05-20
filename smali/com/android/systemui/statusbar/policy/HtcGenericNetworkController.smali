.class public Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;
.super Lcom/android/systemui/statusbar/policy/NetworkController;
.source "HtcGenericNetworkController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;
    }
.end annotation


# static fields
.field static REGION:I

.field static SKU_ID:I

.field static mContext2:Landroid/content/Context;


# instance fields
.field private final SPRINT_NET_TYPE_3G:I

.field private final SPRINT_NET_TYPE_GSM:I

.field private final SPRINT_NET_TYPE_LTE:I

.field private isHkCslIconEnabled:Z

.field final mAirplaneIconId:I

.field private mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field mDataIconId:I

.field mDataIconName:Ljava/lang/String;

.field mDataVisible:Z

.field private mDuringAnimation:Z

.field mFemtocellIconId:I

.field mFemtocellIconName:Ljava/lang/String;

.field mFemtocellVisible:Z

.field final mHandler:Landroid/os/Handler;

.field mLastDataConnected:Z

.field mLastDataIconId:I

.field mLastDataVisible:Z

.field mLastFemtocellIconId:I

.field mLastFemtocellVisible:Z

.field mLastPhoneSignalIconIdRight:I

.field mLastPhoneSignalVisible:Z

.field mLastSignalLevel:I

.field mLastSimCardIconId:I

.field mLastSimCardVisible:Z

.field mLastWifiActivity:I

.field mLastWifiLevel:I

.field mLastWifiVisible:Z

.field mLowHsdpaCategory:Z

.field private mLteLocked:Z

.field mMobileDataEnabled:Z

.field mOpNameVisible:Z

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconIdRight:I

.field mPhoneSignalIconName:Ljava/lang/String;

.field mPhoneSignalIconNameRight:Ljava/lang/String;

.field mPhoneSignalVisible:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mQueryMode:Z

.field private mRilReader:Lcom/htc/customization/HtcCustomizationReader;

.field mSecondSignalStrength:Landroid/telephony/SignalStrength;

.field mSectorId:Ljava/lang/String;

.field final mSgLteMdmQscPhone:Z

.field final mSgLtePhone:Z

.field final mShow3gForEvdo:Z

.field mShow4gForLte:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSimCardIconId:I

.field mSimCardIconName:Ljava/lang/String;

.field mSimCardVisible:Z

.field mSimulationEnabled:Z

.field mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

.field private mSprintLteTextVisible:Z

.field private mWasDormant:Z

.field mWifiActivityEnabled:Z

.field mWifiIconName:Ljava/lang/String;

.field mWifiOffload:Z

.field mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>()V

    sput-object p1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    const v10, 0x7f0204b9

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mAirplaneIconId:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalVisible:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataConnected:Z

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->loadSupportWifiOffload()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiOffload:Z

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->showWifiActivity()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->show3gForEvdo()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow3gForEvdo:Z

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->show4gForLte()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconName:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSectorId:Ljava/lang/String;

    const-string v10, "sglte2"

    const-string v11, "ro.baseband.arch"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLteMdmQscPhone:Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSgltephone()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->initObserver()V

    new-instance v10, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isLteLocked()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SPRINT_NET_TYPE_LTE:I

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SPRINT_NET_TYPE_3G:I

    const/4 v10, 0x2

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SPRINT_NET_TYPE_GSM:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWasDormant:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSprintLteTextVisible:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v12, 0x600001e1

    invoke-virtual {v10, v11, v12}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v10, Landroid/telephony/SignalStrength;

    invoke-direct {v10}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v10, :cond_0

    const-string v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;

    invoke-direct {v11, p0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$2;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Lcom/android/internal/util/AsyncChannel;)V

    invoke-virtual {v1, v10, v11, v9}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "com.htc.action.lte_lock_status_change"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const-string v10, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mobile data "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v10, :cond_8

    const-string v8, "enabled"

    :goto_0
    const-string v10, "DATA_ICON"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " when reboot"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v10, "com.htc.permission.APP_PLATFORM"

    const/4 v11, 0x0

    invoke-virtual {p1, p0, v6, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateAirplaneMode()V

    const-string v10, "ro.ril.hsdpa.category"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v10, 0x9

    if-le v3, v10, :cond_9

    const/16 v10, 0xb

    if-eq v3, v10, :cond_9

    const/16 v10, 0xc

    if-eq v3, v10, :cond_9

    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLowHsdpaCategory:Z

    const-string v10, "StatusBar.NetworkController"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "hsdpa category="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslDevice()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "pre_state_of_hk_d"

    const/4 v12, -0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "HK D icon customization, state="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V

    const/4 v10, -0x1

    if-eq v4, v10, :cond_4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    :cond_5
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android_secret_code"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "265"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$3;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v7, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_6
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_7

    new-instance v10, Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-direct {v10, p1}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v10, p0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->register(Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;)V

    :cond_7
    return-void

    :cond_8
    const-string v8, "disabled"

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateFemtocellIcon()V

    return-void
.end method

.method static synthetic access$10(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    return-void
.end method

.method static synthetic access$11(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    return v0
.end method

.method static synthetic access$13(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    return-void
.end method

.method static synthetic access$14(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    return-void
.end method

.method static synthetic access$15(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateIcons()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpState()V

    return-void
.end method

.method static synthetic access$7(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscNetworkType()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V

    return-void
.end method

.method public static alwaysDisplayDataIcon()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_always_display_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->checkSkuId([I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_0

    move v1, v2

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private broadcastSignalClusterIntent()V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.systemui.UI_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "signal"

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "signal_right"

    iget v7, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eqz v6, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    :goto_0
    const-string v6, "data_connection"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-eqz v6, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    :goto_1
    const-string v6, "wifi"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-eqz v6, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    :goto_2
    const-string v6, "sim"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const v5, 0x7f0204b9

    :cond_0
    const-string v6, "airplane"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static varargs checkSkuId([I)Z
    .locals 4

    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    sget v3, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    if-eq v2, v3, :cond_2

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    aget v3, p0, v0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v2

    goto :goto_1
.end method

.method private dumpIconState()V
    .locals 20

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v18, 0x100

    move/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v18, "dumpIcon["

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconNameRight:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconName:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const-string v11, "T"

    :goto_4
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconName:Ljava/lang/String;

    :goto_5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "StatusBar.NetworkController"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v7, "(gone)"

    goto/16 :goto_0

    :cond_2
    const-string v17, "(gone)"

    goto/16 :goto_1

    :cond_3
    const-string v10, "(gone)"

    goto/16 :goto_2

    :cond_4
    const-string v9, "(gone)"

    goto :goto_3

    :cond_5
    const-string v11, "F"

    goto :goto_4

    :cond_6
    const-string v8, "(gone)"

    goto :goto_5
.end method

.method private dumpState()V
    .locals 10

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "dumpState["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHtcModemLinkOn()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "StatusBar.NetworkController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v5, "null"

    goto/16 :goto_0

    :cond_1
    const-string v6, "null"

    goto/16 :goto_1
.end method

.method private getCallState()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getCallState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    goto :goto_0
.end method

.method private getCdmaRoamingIndicator()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getCdmaRoamingIndicator()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getChinaAttachIcon(I)I
    .locals 3

    const v1, 0x7f020335

    const v0, 0x7f020342

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v1, :cond_1

    :cond_0
    const v0, 0x7f020331

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f02033b

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    if-eqz v1, :cond_4

    const v1, 0x7f020339

    goto :goto_0

    :cond_4
    const v1, 0x7f020348

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-nez v2, :cond_2

    const v1, 0x7f02050f

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-nez v2, :cond_2

    const v1, 0x7f020333

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f02033f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getCustomizationReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v0
.end method

.method private getDataActivity()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getDataActivity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    goto :goto_0
.end method

.method private getDataNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataState()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getDataState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    goto :goto_0
.end method

.method private getHtcCdmaMaxLevel()I
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_signal_bar_count"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcCdmaMaxLevel()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getHtcGsmMaxLevel()I
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_signal_bar_count"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getHtcGsmMaxLevel()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getMdmNetworkType()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getMdmNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ril.sglte.mdm.radio_tech"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    goto :goto_0
.end method

.method private getMdmSignalLevel()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSignalLevel()I

    move-result v0

    return v0
.end method

.method private getModemState()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getModemState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.radio.modem_state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getNetworkCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkId()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    goto :goto_0
.end method

.method private getPhoneType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getPhoneType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getQscNetworkType()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getQscNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ril.sglte.qsc.radio_tech"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    goto :goto_0
.end method

.method private getQscSignalLevel(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getQscSignalLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSecondSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p1}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRatLevel(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

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

.method private getRilReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    const-string v0, "Android_Ril"

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->getReaderByApp(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mRilReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v0
.end method

.method private getSectorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSectorId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSectorId:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSignalLevel()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSignalLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private getSprintDataIconId(Z)I
    .locals 9

    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    if-ne v1, v5, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSprintLteTextVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataActivity()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWasDormant:Z

    if-eqz p1, :cond_1

    if-eq v0, v8, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_6

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWasDormant:Z

    if-eqz p1, :cond_a

    if-ne v0, v8, :cond_7

    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_INACTIVE_TO_DORMANT:[I

    aget v4, v4, v3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIconLater(J)V

    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_DORMANT_TO_INACTIVE:[I

    aget v4, v4, v3

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_ACTIVE:[I

    aget v4, v4, v3

    goto :goto_0

    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_INACTIVE:[I

    aget v4, v4, v3

    goto :goto_0

    :cond_a
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataConnected:Z

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_DORMANT_TO_IDLE:[I

    aget v4, v4, v3

    goto :goto_0

    :cond_b
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->SPRINT_DATA_IDLE:[I

    aget v4, v4, v3

    goto :goto_0
.end method

.method private getUnderSilentReset()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getUnderSilentReset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "sys.under_silent_reset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getVoiceNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCombinedService()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasCsService()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasPsService()Z

    move-result v2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private hasDataService()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasPsService()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMdmService()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "ril.sglte.mdm.reg_state"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v0, 0x0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasMdmService()Z

    move-result v2

    goto :goto_0
.end method

.method private hasQscService()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "ril.sglte.qsc.reg_state"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v0, 0x0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasQscService()Z

    move-result v2

    goto :goto_0
.end method

.method private hasService(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVoiceService()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->hasCsService()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initObserver()V
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tweaks_always_display_data"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "tweaks_signal_icons"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "tweaks_signal_bar_count"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "tweaks_wifi_activity"

    aput-object v3, v0, v2

    new-instance v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$5;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Landroid/os/Handler;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$6;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;[Ljava/lang/String;Landroid/database/ContentObserver;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private is2gOnly(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isATT()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_signal_icons"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isAirplaneMode()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->isAirplaneMode()Z

    move-result v0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public static isCMCC()Z
    .locals 2

    const/16 v0, 0x1a

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCT()Z
    .locals 2

    const/16 v0, 0x1b

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCU()Z
    .locals 2

    const/16 v0, 0x1d

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChina()Z
    .locals 2

    const/4 v0, 0x3

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataConnected()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHtcModemLinkOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_ICON"

    const-string v2, "ModemLink ON!"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xc -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private isHkCslDevice()Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x46

    sget v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCustomizationReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "StatusBar.NetworkController"

    const-string v2, "custReader is null, return false"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "data_icon_h3l_d_enabled"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private isHtcModemLinkOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLATAM()Z
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->checkSkuId([I)Z

    move-result v0

    return v0

    :array_0
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private isLteLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isNetworkRoaming()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->isRoamingGsm()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoamingCdma()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isOrange()Z
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/16 v1, 0x2e

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrangeFR()Z
    .locals 2

    const/16 v0, 0x30

    sget v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSgltephone()Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "StatusBar.NetworkController"

    const-string v3, "rilReader is null, return false"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "isSingleSimDualSignalTdscdma"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static isSprint()Z
    .locals 4

    const/4 v3, -0x1

    sget-object v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_signal_icons"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->checkSkuId([I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static isTmoUS()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_signal_icons"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isVerizon()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_signal_icons"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    sget v3, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isVodafoneEU()Z
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->checkSkuId([I)Z

    move-result v0

    return v0

    :array_0
    .array-data 0x4
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadSupportWifiOffload()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "persist.wifi.offload"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "StatusBar.NetworkController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_b
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_c
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_d
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private show3gForEvdo()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCustomizationReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "StatusBar.NetworkController"

    const-string v2, "custReader is null, return false"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "show_3g_for_evdo"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static show4gForLte()Z
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_signal_icons"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showWifiActivity()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    sget-object v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mContext2:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_wifi_activity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isAirplaneMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    const-string v0, "AIRPLANE_ICON"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateAirplaneMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateDataIcon()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isDataConnected()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isDataConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->alwaysDisplayDataIcon()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->alwaysDisplayDataIcon()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v4

    if-ne v7, v4, :cond_2

    const-string v4, "DATA_ICON"

    const-string v5, "hide data icon during CDMA voice call"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-ne v2, v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-eq v0, v4, :cond_1e

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getUnderSilentReset()I

    move-result v4

    if-ne v4, v6, :cond_1e

    const-string v4, "SILENT_RESET"

    const-string v5, "during silent reset, skip"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataActivity()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    aget v0, v1, v5

    goto :goto_0

    :pswitch_0
    array-length v4, v1

    if-gt v4, v3, :cond_6

    const/4 v3, 0x0

    :cond_6
    aget v0, v1, v3

    goto :goto_0

    :pswitch_1
    aget v0, v1, v8

    goto :goto_0

    :pswitch_2
    aget v0, v1, v7

    goto :goto_0

    :pswitch_3
    aget v0, v1, v6

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_4
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_G:[I

    aget v0, v4, v5

    goto :goto_0

    :pswitch_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G_LTE:[I

    aget v0, v4, v5

    goto :goto_0

    :pswitch_6
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    aget v0, v4, v5

    goto :goto_0

    :pswitch_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_E:[I

    aget v0, v4, v5

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v4, :cond_9

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getChinaAttachIcon(I)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasVoiceService()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getVoiceNetworkType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getChinaAttachIcon(I)I

    move-result v0

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isDataConnected()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->alwaysDisplayDataIcon()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_f
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->alwaysDisplayDataIcon()Z

    move-result v4

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_10

    const/4 v2, 0x0

    :cond_10
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isEvdo()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v4

    if-ne v7, v4, :cond_12

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataActivity()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    aget v0, v1, v5

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v4

    if-eqz v4, :cond_13

    aget v0, v1, v5

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v4

    if-eqz v4, :cond_14

    aget v0, v1, v5

    goto/16 :goto_0

    :cond_14
    array-length v4, v1

    if-gt v4, v3, :cond_15

    const/4 v3, 0x0

    :cond_15
    aget v0, v1, v3

    goto/16 :goto_0

    :pswitch_9
    aget v0, v1, v8

    goto/16 :goto_0

    :pswitch_a
    aget v0, v1, v7

    goto/16 :goto_0

    :pswitch_b
    aget v0, v1, v6

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->alwaysDisplayDataIcon()Z

    move-result v4

    if-nez v4, :cond_17

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_17

    const/4 v2, 0x0

    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    :pswitch_c
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v4, :cond_1a

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-nez v4, :cond_1a

    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    aget v0, v4, v5

    goto/16 :goto_0

    :pswitch_d
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v4, :cond_18

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-nez v4, :cond_18

    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_3G:[I

    aget v0, v4, v5

    goto/16 :goto_0

    :cond_18
    const v0, 0x7f020265

    goto/16 :goto_0

    :pswitch_e
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v4, :cond_19

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-nez v4, :cond_19

    sget-object v4, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_LTE:[I

    aget v0, v4, v5

    goto/16 :goto_0

    :cond_19
    const v0, 0x7f0204c3

    goto/16 :goto_0

    :cond_1a
    const v0, 0x7f0201e1

    goto/16 :goto_0

    :cond_1b
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v4, :cond_1d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->alwaysDisplayDataIcon()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_1c

    const/4 v2, 0x0

    :cond_1c
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSprintDataIconId(Z)I

    move-result v0

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1e
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isDataConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataConnected:Z

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eq v4, v5, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private updateDataIconLater(J)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDuringAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;-><init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final updateDataNetType()V
    .locals 31

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v28

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkOperator()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkCountry()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isHkCslIconEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    const-string v29, "45400"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "45402"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "45410"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "45418"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    const/16 v25, 0x0

    :goto_0
    if-eqz v25, :cond_3

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_D:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v25, 0x1

    goto :goto_0

    :cond_2
    const/16 v25, 0x0

    :cond_3
    packed-switch v28, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v29

    if-eqz v29, :cond_48

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v29

    if-eqz v29, :cond_4

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_LTE:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v29

    if-eqz v29, :cond_5

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G_LTE:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v29

    if-eqz v29, :cond_6

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_LTE:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_1

    :cond_6
    if-nez v25, :cond_7

    const/16 v29, 0x46

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_1

    :cond_7
    const/16 v29, 0x38

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    const-string v29, "20416"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_1

    :cond_8
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_9
    const/16 v29, 0x63

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    const-string v29, "pl"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    sget-object v12, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_b
    sget-object v12, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v29

    if-eqz v29, :cond_d

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4GLTE:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_e
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_LTE:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow3gForEvdo:Z

    move/from16 v29, v0

    if-nez v29, :cond_f

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_EVDO:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v29

    if-eqz v29, :cond_10

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->VZW_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_10
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G_CDMA:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    :pswitch_3
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v29

    if-nez v29, :cond_11

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v29

    if-eqz v29, :cond_12

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    sget-object v17, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    :pswitch_4
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v29

    if-eqz v29, :cond_14

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_13
    sget-object v17, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    goto :goto_4

    :cond_14
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v29

    if-eqz v29, :cond_15

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_15
    const/16 v29, 0x26

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    const-string v29, "302220"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    sget-object v18, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_16
    sget-object v18, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_5

    :cond_17
    const/16 v29, 0x3f

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    const-string v29, "1"

    const-string v30, "gsm.networktype.dc"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    sget-object v19, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_DC:[I

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_18
    sget-object v19, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3GPLUS:[I

    goto :goto_6

    :cond_19
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v29

    if-nez v29, :cond_1a

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v29

    if-nez v29, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1b

    :cond_1a
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_1b
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrange()Z

    move-result v29

    if-nez v29, :cond_1d

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v29

    if-eqz v29, :cond_1c

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v29

    if-eqz v29, :cond_1d

    :cond_1c
    const/16 v29, 0x27

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    :cond_1d
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_1e
    const/16 v29, 0x1

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_21

    const/4 v2, 0x0

    const-string v29, "302500"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1f

    const-string v29, "302490"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1f

    const-string v29, "302320"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v2, 0x0

    if-nez v7, :cond_1f

    :goto_7
    if-eqz v2, :cond_20

    sget-object v20, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_1f
    const/4 v2, 0x1

    goto :goto_7

    :cond_20
    sget-object v20, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    goto :goto_8

    :cond_21
    const/16 v29, 0x23

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_23

    const-string v29, "51502"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    sget-object v21, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_9
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_22
    sget-object v21, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    goto :goto_9

    :cond_23
    const/16 v29, 0x9

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_24

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_24
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isLATAM()Z

    move-result v29

    if-nez v29, :cond_25

    const/16 v29, 0x5

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_25

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVodafoneEU()Z

    move-result v29

    if-nez v29, :cond_25

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_25
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    :pswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v29

    if-eqz v29, :cond_26

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_26
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v29

    if-eqz v29, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLowHsdpaCategory:Z

    move/from16 v29, v0

    if-nez v29, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v29

    if-nez v29, :cond_27

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_27
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_28
    const/16 v29, 0x9

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v29

    if-eqz v29, :cond_29

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_29
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_2a
    const/16 v29, 0x1

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2d

    const/4 v3, 0x0

    const-string v29, "302500"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2b

    const-string v29, "302490"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2b

    const-string v29, "302320"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v3, 0x0

    if-nez v8, :cond_2b

    :goto_a
    if-eqz v3, :cond_2c

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_b
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_2b
    const/4 v3, 0x1

    goto :goto_a

    :cond_2c
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_b

    :cond_2d
    const/16 v29, 0x26

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2f

    const-string v29, "302220"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2e

    sget-object v23, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_c
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_2e
    sget-object v23, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_c

    :cond_2f
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrange()Z

    move-result v29

    if-nez v29, :cond_30

    const/16 v29, 0x27

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_30

    const/16 v29, 0x3f

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_31

    :cond_30
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3GPLUS:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_31
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v29

    if-nez v29, :cond_32

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v29

    if-nez v29, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    move/from16 v29, v0

    if-eqz v29, :cond_33

    :cond_32
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_33
    const/16 v29, 0x5

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_36

    const/4 v4, 0x0

    const-string v29, "302610"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_34

    const-string v29, "302640"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_34

    const-string v29, "302780"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v4, 0x0

    if-nez v9, :cond_34

    :goto_d
    if-eqz v4, :cond_35

    sget-object v24, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    :goto_e
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_34
    const/4 v4, 0x1

    goto :goto_d

    :cond_35
    sget-object v24, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    goto :goto_e

    :cond_36
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_H:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :pswitch_6
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v29

    if-eqz v29, :cond_37

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_37
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v29

    if-eqz v29, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLowHsdpaCategory:Z

    move/from16 v29, v0

    if-nez v29, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v29

    if-nez v29, :cond_38

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_38
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->TMOUS_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_39
    const/16 v29, 0x9

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v29

    if-eqz v29, :cond_3a

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_3a
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_3b
    const/16 v29, 0x1

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3e

    const/4 v5, 0x0

    const-string v29, "302500"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3c

    const-string v29, "302490"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3c

    const-string v29, "302320"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v5, 0x0

    if-nez v10, :cond_3c

    :goto_f
    if-eqz v5, :cond_3d

    sget-object v13, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_10
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_3c
    const/4 v5, 0x1

    goto :goto_f

    :cond_3d
    sget-object v13, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_10

    :cond_3e
    const/16 v29, 0x26

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_40

    const-string v29, "302220"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3f

    sget-object v14, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_4G:[I

    :goto_11
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_3f
    sget-object v14, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_11

    :cond_40
    const/16 v29, 0x5

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_43

    const/4 v6, 0x0

    const-string v29, "302610"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_41

    const-string v29, "302640"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_41

    const-string v29, "302780"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v6, 0x0

    if-nez v11, :cond_41

    :goto_12
    if-eqz v6, :cond_42

    sget-object v15, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_HPLUS:[I

    :goto_13
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_41
    const/4 v6, 0x1

    goto :goto_12

    :cond_42
    sget-object v15, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    goto :goto_13

    :cond_43
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_3G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :pswitch_7
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v29

    if-eqz v29, :cond_44

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_E:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_44
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v29

    if-nez v29, :cond_45

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isTmoUS()Z

    move-result v29

    if-nez v29, :cond_45

    const/16 v29, 0x3f

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_46

    :cond_45
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_46
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCU()Z

    move-result v29

    if-eqz v29, :cond_47

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_47
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_E:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_2

    :cond_48
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v29

    if-nez v29, :cond_49

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v29

    if-eqz v29, :cond_4a

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4b

    sget-object v16, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_1X:[I

    :goto_14
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    :pswitch_8
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v29

    if-eqz v29, :cond_4c

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->ATT_DATA_G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_4b
    sget-object v16, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    goto :goto_14

    :cond_4c
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v29

    if-nez v29, :cond_4d

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v29

    if-nez v29, :cond_4d

    const/16 v29, 0x3f

    sget v30, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    move/from16 v29, v0

    if-nez v29, :cond_4d

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVodafoneEU()Z

    move-result v29

    if-nez v29, :cond_4d

    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :cond_4d
    sget-object v29, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_DATA_2G:[I

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private updateFemtocellIcon()V
    .locals 11

    const/16 v10, 0xc

    const v3, 0x7f0204c2

    const-string v7, "FEMTOCELL_ICON"

    const-string v8, "updateFemtocellIcon"

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v8

    if-ne v7, v8, :cond_0

    const-string v7, "FEMTOCELL_ICON"

    const-string v8, "skip updating icon during voice call"

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkId()I

    move-result v4

    const-string v7, "FEMTOCELL_ICON"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "voice nid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xfa

    if-lt v4, v7, :cond_3

    const/16 v7, 0xfe

    if-gt v4, v7, :cond_3

    move v1, v3

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSectorId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FEMTOCELL_ICON"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "data rat="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_0
    if-eqz v6, :cond_1

    :goto_3
    const/16 v7, 0xc

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    and-int/lit8 v7, v7, 0xc

    if-eq v7, v10, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private updateIcons()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->show4gForLte()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mShow4gForLte:Z

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->showWifiActivity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    return-void
.end method

.method private final updateSignalStrength()V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCMCC()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLteMdmQscPhone:Z

    if-eqz v11, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrengthCmccSgLte()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSgLtePhone:Z

    if-eqz v11, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrengthSgLte()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCT()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrengthCtLte()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrangeFR()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v11, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "20801"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "34001"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_4
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    :cond_5
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v11, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getHtcCdmaMaxLevel()I

    move-result v4

    :goto_2
    move v5, v4

    :goto_3
    if-eqz v1, :cond_6

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v11, :cond_a

    :cond_6
    const-string v9, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "level=X/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconNull(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    goto :goto_0

    :cond_7
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getHtcGsmMaxLevel()I

    move-result v4

    goto :goto_2

    :cond_9
    const/4 v5, 0x5

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCdmaRoamingIndicator()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v6, 0x2

    :goto_4
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSignalLevel()I

    move-result v3

    const-string v9, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "level="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getVoiceNetworkType()I

    move-result v9

    const/16 v11, 0xd

    if-ne v9, v11, :cond_b

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "invalid LTE signal, keep current level="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    :cond_b
    array-length v9, v0

    add-int/lit8 v7, v9, -0x1

    if-le v3, v7, :cond_c

    const-string v9, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "set invalid level "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    :cond_c
    if-gez v3, :cond_d

    const-string v9, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "set invalid level "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_d
    aget v9, v0, v3

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    if-ne v9, v10, :cond_e

    iget v9, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    if-eq v9, v10, :cond_0

    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "level"

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v9, 0x3

    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    :pswitch_1
    const/4 v9, 0x2

    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    :pswitch_2
    invoke-static {v5, v10}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isATT()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-static {v5, v10}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v11

    if-eqz v11, :cond_12

    :goto_6
    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getSignalBarIconList(II)[I

    move-result-object v0

    goto/16 :goto_5

    :cond_12
    move v9, v10

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private final updateSignalStrengthCmccSgLte()V
    .locals 14

    const/4 v13, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getModemState()I

    move-result v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasMdmService()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasQscService()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getMdmNetworkType()I

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscNetworkType()I

    move-result v8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getMdmSignalLevel()I

    move-result v3

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getQscSignalLevel(I)I

    move-result v9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v7

    const-string v10, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/16 v10, 0xd

    if-ne v8, v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "SIGNAL_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "invalid LTE signal, keep current level="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    :cond_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    const/4 v10, 0x3

    if-ne v5, v10, :cond_5

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    invoke-static {v13, v13, v13, v13, v13}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalStrength(ZIZIZ)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v13, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    :goto_0
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    if-ne v10, v11, :cond_1

    iget v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    if-eq v10, v11, :cond_3

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/4 v3, 0x0

    :cond_2
    const-string v10, "level"

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {v0, v4, v1, v8}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalRat(ZIZI)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0, v3, v1, v9, v7}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalStrength(ZIZIZ)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_0

    :cond_5
    if-eq v5, v6, :cond_6

    const/4 v6, 0x0

    :cond_6
    if-eqz v6, :cond_7

    move v1, v0

    :cond_7
    if-nez v6, :cond_8

    move v4, v8

    :cond_8
    if-eqz v6, :cond_9

    move v9, v3

    :cond_9
    invoke-static {v1, v4, v9, v7}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v13, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_0
.end method

.method private updateSignalStrengthCtLte()V
    .locals 25

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getNetworkType()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    if-nez v5, :cond_1

    const v22, 0x7f020041

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v22, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "level"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isEvdo()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v18

    :goto_2
    const/16 v19, 0x0

    if-nez v3, :cond_5

    const/16 v19, 0x0

    if-nez v4, :cond_5

    :cond_2
    :goto_3
    const-string v22, "SIGNAL_ICON"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "cdma:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " data:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v7, v22, v19

    :goto_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_5
    move/from16 v17, v18

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    if-eqz v16, :cond_2

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v20

    :goto_6
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v19

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v20

    goto :goto_6

    :cond_7
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_4G_SIGNAL_R:[I

    aget v7, v22, v19

    goto :goto_4

    :cond_8
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_4G_SIGNAL:[[I

    aget-object v22, v22, v18

    aget v22, v22, v19

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_10

    const/16 v22, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getCallState()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v22

    if-eqz v22, :cond_a

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL_R:[I

    aget v22, v22, v18

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_1X_SIGNAL:[I

    aget v8, v22, v18

    :goto_7
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto :goto_5

    :cond_b
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL:[I

    aget v8, v22, v18

    goto :goto_7

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v22

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v9, v22, v19

    :goto_8
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_5

    :cond_d
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_3G_SIGNAL_R:[I

    aget v9, v22, v19

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_1X_3G_SIGNAL:[[I

    aget-object v22, v22, v18

    aget v10, v22, v19

    :goto_9
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_5

    :cond_f
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_3G_SIGNAL:[[I

    aget-object v22, v22, v18

    aget v10, v22, v19

    goto :goto_9

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoamingCdma()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v11, v22, v18

    :goto_a
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_5

    :cond_11
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL_R:[I

    aget v11, v22, v18

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_1X_SIGNAL:[I

    aget v12, v22, v18

    :goto_b
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_5

    :cond_13
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL:[I

    aget v12, v22, v18

    goto :goto_b

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSignalLevel()I

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    packed-switch v21, :pswitch_data_0

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v22

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v15, v22, v17

    :goto_c
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v22

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v13, v22, v17

    :goto_d
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :cond_15
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_3G_SIGNAL_R:[I

    aget v13, v22, v17

    goto :goto_d

    :cond_16
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_3G_SIGNAL:[I

    aget v22, v22, v17

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isNetworkRoaming()Z

    move-result v22

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->HTC_SIGNAL_4LEVEL_R:[I

    aget v14, v22, v17

    :goto_e
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :cond_17
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_4G_SIGNAL_R:[I

    aget v14, v22, v17

    goto :goto_e

    :cond_18
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_4G_SIGNAL:[I

    aget v22, v22, v17

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :cond_19
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL_R:[I

    aget v15, v22, v17

    goto :goto_c

    :cond_1a
    sget-object v22, Lcom/android/systemui/statusbar/policy/HtcIcons;->CT_2G_SIGNAL:[I

    aget v22, v22, v17

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateSignalStrengthSgLte()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasDataService()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasVoiceService()Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getDataNetworkType()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getVoiceNetworkType()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const/16 v16, 0x65

    invoke-virtual/range {v14 .. v16}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const/16 v16, 0x64

    invoke-virtual/range {v14 .. v16}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;I)I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->hasCombinedService()Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->is2gOnly(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->is2gOnly(I)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v14

    const-string v15, "getUiccAppType"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v14, "getUiccAppType"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_1
    if-eqz v12, :cond_6

    sget-object v14, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v14}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v2, 0x1

    :goto_2
    const-string v14, "SIGNAL_ICON"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    const/16 v14, 0xd

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v14}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "SIGNAL_ICON"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "invalid LTE signal, keep current level="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    :cond_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSignalLevel:I

    if-eqz v5, :cond_9

    if-eqz v11, :cond_7

    invoke-static {v6, v3, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    if-eq v14, v15, :cond_3

    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-string v14, "com.htc.intent.action.SYSTEMUI_UPDATE_SIGNAL_STRENGTH"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_2

    const/4 v10, 0x0

    :cond_2
    const-string v14, "level"

    invoke-virtual {v9, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getRatLevel(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getRatLevel(I)I

    move-result v15

    if-eq v14, v15, :cond_8

    invoke-static {v6, v3, v7, v13}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalRat(ZIZI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v6, v10, v7, v8, v11}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteDualStandbySignalStrength(ZIZIZ)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_3

    :cond_8
    invoke-static {v7, v13, v8, v11}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/android/systemui/statusbar/policy/HtcIcons;->getCmccSgLteSingleStandbySignalStrength(ZIIZ)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    goto :goto_3
.end method

.method private updateSimCardIcon()V
    .locals 15

    const/4 v14, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isCdma()Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v8, v11, :cond_1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v8, v11, :cond_1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v8, v11, :cond_1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v8, v11, :cond_1

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v8, v7, :cond_0

    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v10, :cond_0

    const/4 v6, 0x1

    const v5, 0x7f02046a

    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    iput v5, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    return-void

    :cond_1
    const/4 v6, 0x1

    const v5, 0x7f0204bb

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getHtcDeviceSlotType()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v8, v0, :cond_0

    aget-object v11, v2, v14

    const-string v12, "RUIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    aget-object v11, v2, v14

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    :cond_3
    const/4 v6, 0x1

    const v5, 0x7f02046a

    goto :goto_0

    :cond_4
    const-string v11, "SIM_ICON"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "slot: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v13, v2, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM_ICON"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateSimState: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PERM_DISABLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_2
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_3
    const-string v2, "LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_4
    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_6
    const-string v2, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ICC_HOT_SWAP_INSERTED_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private updateWifiIcon()V
    .locals 11

    const/4 v10, -0x1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v8, :cond_2

    sget-object v7, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_SIGNAL_STRENGTH_ACTIVITY:[[I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-ne v8, v10, :cond_1

    const/4 v0, 0x0

    :goto_0
    aget-object v8, v7, v0

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    aget v3, v8, v9

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/HtcIcons;->QS_WIFI_SIGNAL_STRENGTH:[I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-ne v8, v10, :cond_4

    const/4 v2, 0x0

    :goto_2
    aget v8, v5, v2

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-nez v8, :cond_0

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_SIGNAL_STRENGTH:[I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-ne v8, v10, :cond_3

    const/4 v1, 0x0

    :goto_4
    aget v3, v6, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    goto :goto_4

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    goto :goto_2

    :cond_5
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v8, :cond_6

    const v4, 0x7f0204d9

    :goto_5
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    const v8, 0x7f020179

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_3

    :cond_6
    const v4, 0x7f0204d0

    goto :goto_5
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 13

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    if-eqz v3, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWifiState: WIFI_STATE_CHANGED "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v10, :cond_3

    const-string v8, "enabled"

    :goto_1
    const-string v10, "WIFI_ICON"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-nez v10, :cond_0

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const-string v8, "disabled"

    goto :goto_1

    :cond_4
    const-string v10, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "newRssi"

    const/16 v11, -0xc8

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget v10, Lcom/android/systemui/statusbar/policy/HtcIcons;->WIFI_LEVEL_COUNT:I

    const-string v11, "frequency"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v5, v10, v11}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v4

    const-string v10, "WIFI_ICON"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "updateWifiState: RSSI_CHANGED "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiOffload:Z

    if-eqz v10, :cond_5

    const/16 v10, -0xc7

    if-ne v5, v10, :cond_5

    const/4 v4, -0x1

    :cond_5
    iget v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    if-eq v4, v10, :cond_1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiOffload:Z

    if-nez v10, :cond_6

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    goto :goto_2

    :cond_6
    const/4 v10, -0x1

    if-ne v4, v10, :cond_8

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiActivityEnabled:Z

    if-eqz v10, :cond_7

    const v6, 0x7f0204d9

    :goto_3
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    const v10, 0x7f020179

    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_2

    :cond_7
    const v6, 0x7f0204d0

    goto :goto_3

    :cond_8
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    goto :goto_2

    :cond_9
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "networkInfo"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    const/4 v3, 0x0

    :cond_b
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWifiState: NETWORK_STATE_CHANGED "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v10, :cond_d

    const-string v9, "connected"

    :goto_4
    const-string v10, "WIFI_ICON"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v10, :cond_c

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiLevel:I

    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    goto/16 :goto_2

    :cond_d
    const-string v9, "disconnected"

    goto :goto_4
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V

    return-void
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    move-object v0, p1

    move v4, v3

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimState(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateAirplaneMode()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto :goto_0

    :cond_2
    const-string v3, "com.htc.systemui.UI_QUERY_START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->broadcastSignalClusterIntent()V

    goto :goto_0

    :cond_3
    const-string v3, "com.htc.systemui.UI_QUERY_END"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    goto :goto_0

    :cond_4
    const-string v3, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mMobileDataEnabled:Z

    if-eqz v3, :cond_5

    const-string v2, "enabled"

    :goto_1
    const-string v3, "DATA_ICON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto :goto_0

    :cond_5
    const-string v2, "disabled"

    goto :goto_1

    :cond_6
    const-string v3, "com.htc.action.lte_lock_status_change"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isLteLocked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLteLocked:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateWifiState(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V
    .locals 9

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-interface {p1, v0, v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setPhoneSignalIcon(ZIILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    const v1, 0x7f0204b9

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setSimCardIcon(ZI)V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isOrangeFR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mOpNameVisible:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setOpNameVisibility(Z)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSprintLteTextVisible:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    :cond_1
    invoke-interface {p1, v8}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setSprintLteTextVisibility(Z)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->setFemtocellIcon(ZI)V

    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;->batchApply()V

    return-void
.end method

.method refreshViews()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->isChina()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-eqz v2, :cond_13

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    if-eq v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mQueryMode:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->broadcastSignalClusterIntent()V

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconNameRight:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalIconIdRight:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastPhoneSignalIconIdRight:I

    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    if-eq v2, v3, :cond_9

    :cond_7
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconName:Ljava/lang/String;

    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataIconId:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mDataVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastDataVisible:Z

    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    if-ne v2, v3, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    if-eq v2, v3, :cond_c

    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiIconName:Ljava/lang/String;

    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiActivity:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mWifiVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastWifiVisible:Z

    :cond_c
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    if-ne v2, v3, :cond_d

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    if-eq v2, v3, :cond_f

    :cond_d
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    if-eq v2, v3, :cond_e

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconName:Ljava/lang/String;

    :cond_e
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimCardIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastSimCardIconId:I

    :cond_f
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    if-ne v2, v3, :cond_10

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    if-eq v2, v3, :cond_12

    :cond_10
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    if-eq v2, v3, :cond_11

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconName:Ljava/lang/String;

    :cond_11
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellVisible:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mFemtocellIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mLastFemtocellIconId:I

    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->dumpIconState()V

    return-void

    :cond_13
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mPhoneSignalVisible:Z

    goto/16 :goto_0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;)V

    goto/16 :goto_1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto/16 :goto_2
.end method

.method public startSimulation()V
    .locals 5

    const-string v3, "SIMULATION"

    const-string v4, "start simulation"

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getSkuId()I

    move-result v2

    :goto_0
    sput v2, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulator:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->getRegion()I

    move-result v1

    :cond_0
    sput v1, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stopSimulation()V
    .locals 2

    const-string v0, "SIMULATION"

    const-string v1, "stop simulation"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->mSimulationEnabled:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->SKU_ID:I

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    sput v0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->REGION:I

    return-void
.end method

.method public triggerIconUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSignalStrength()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataNetType()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateDataIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateSimCardIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateAirplaneMode()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->refreshViews()V

    return-void
.end method
