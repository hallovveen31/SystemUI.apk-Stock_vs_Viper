.class public Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "HtcPhoneStatusBarPolicy.java"


# static fields
.field private static final HTC_DEBUG:Z

.field private static sBCheckSleepMode:Z


# instance fields
.field private final ACTION_FELICA_ICON_LOCK:Ljava/lang/String;

.field private final EXTRA_FELICA_ACTION_LOCK:Z

.field private final EXTRA_FELICA_ACTION_UNLOCK:Z

.field private final EXTRA_FELICA_LOCK_KEY:Ljava/lang/String;

.field private final SLOT_FELICA_ICON:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBluetoothEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mHTCWirelessSleepEndTimeSecond:I

.field private mHTCWirelessSleepModeEnabled:Z

.field private mHTCWirelessSleepStartTimeSecond:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

.field private mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

.field private final mService:Landroid/app/StatusBarManager;

.field public mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

.field private mTtyStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->HTC_DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->sBCheckSleepMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    const-string v13, "felica_lock"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->EXTRA_FELICA_LOCK_KEY:Ljava/lang/String;

    const-string v13, "felica_lock"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->SLOT_FELICA_ICON:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->EXTRA_FELICA_ACTION_LOCK:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->EXTRA_FELICA_ACTION_UNLOCK:Z

    const-string v13, "com.htc.intent.action.FELICA_LOCK"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->ACTION_FELICA_ICON_LOCK:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    new-instance v13, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v13, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->initTheming(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v13, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.intent.action.HAC_STATE_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v4, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const v7, 0x7f02032d

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v13

    const/16 v14, 0xc

    if-ne v13, v14, :cond_7

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    const v7, 0x7f02032e

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v13, "bluetooth"

    invoke-virtual {v6, v13, v7}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setBluetoothVisiblity(Z)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateVolume()V

    const-string v13, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isSupported()Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v13, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    invoke-direct {v13, v14, v15}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    :cond_2
    sget v13, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v14, 0x1f

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v14, "felica_lock"

    const v15, 0x7f020452

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v14, "felica_lock"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V

    new-instance v15, Landroid/content/IntentFilter;

    const-string v16, "com.htc.intent.action.FELICA_LOCK"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v16, "com.htc.permission.APP_PLATFORM"

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_3
    sget-boolean v13, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->sBCheckSleepMode:Z

    if-nez v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->getPersistedWirelessSleepMode()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v14, 0x1f90

    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.android.systemui.statusbar.action.sleep_mode_start"

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v14, 0x1f91

    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.android.systemui.statusbar.action.sleep_mode_end"

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Z

    if-eqz v13, :cond_8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v13, 0xb

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    const/16 v14, 0xc

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    add-int/2addr v13, v14

    const/16 v14, 0xd

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int v8, v13, v14

    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-ge v13, v14, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-lt v8, v13, :cond_4

    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->add(II)V

    :cond_4
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    mul-int/lit16 v15, v15, 0x3e8

    int-to-long v15, v15

    add-long v9, v13, v15

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SleepMode start at: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-le v13, v14, :cond_5

    const/16 v13, 0x3c

    if-le v8, v13, :cond_5

    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->set(II)V

    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->add(II)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14, v9, v10, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    mul-int/lit16 v15, v15, 0x3e8

    int-to-long v15, v15

    add-long v11, v13, v15

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SleepMode end at: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14, v11, v12, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_1
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->sBCheckSleepMode:Z

    :cond_6
    return-void

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v13, "clear sleep mode alarm"

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHeadsetStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$7(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHACStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$8(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateFelicaLock(Landroid/content/Intent;)V

    return-void
.end method

.method private getPersistedWirelessSleepMode()V
    .locals 0

    return-void
.end method

.method private getPhoneType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method private static final printLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "alarmSet"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateAlarm: set="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v3, "alarm_clock"

    const v4, 0x7f0201b9

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "alarm_clock"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f02032d

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "android.bluetooth.adapter.extra.STATE"

    const/high16 v9, -0x8000

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateBluetooth: action="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    const/16 v8, 0xc

    if-ne v1, v8, :cond_0

    move v6, v7

    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v6, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v6, "bluetooth"

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setBluetoothVisiblity(Z)V

    :goto_1
    return-void

    :cond_1
    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateBluetooth: action="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v8, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "updateBluetooth: action="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " state="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    const v5, 0x7f02032e

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0a003f

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0040

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "bluetooth"

    invoke-virtual {v6, v7}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final updateFelicaLock(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "felica_lock"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "felica lock action with extra felica_lock: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "felica_lock"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "felica_lock"

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateGps(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "enabled"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateGps: action="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    const-string v7, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v7, "gps"

    const v8, 0x7f020464

    invoke-virtual {v5, v7, v8}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setGPSVisiblity(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v7, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setGPSVisiblity(Z)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v7, "gps"

    const v8, 0x7f020463

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setGPSVisiblity(Z)V

    goto :goto_0
.end method

.method private updateHACStatus(Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateHACStatus: enable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "hac_status"

    const v4, 0x7f020465

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "hac_status"

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateHeadsetStatus(Landroid/content/Intent;)V
    .locals 19

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    const-string v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v17, "microphone"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "updateHeadsetStatus: state="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " microphone="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTtyStatus:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->getPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    if-nez v13, :cond_1

    new-array v3, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v17

    const-string v17, "bTTY == false: %d"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    and-int/lit8 v17, v5, 0x20

    if-gtz v17, :cond_0

    and-int/lit8 v17, v5, 0x40

    if-lez v17, :cond_1

    :cond_0
    const/4 v13, 0x1

    new-array v4, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v4, v17

    const-string v17, "(nState & 32) > 0 || (nState & 64) > 0: %d"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v17, v5, 0x18

    if-lez v17, :cond_6

    move v15, v14

    :goto_1
    if-ne v5, v14, :cond_7

    if-ne v6, v14, :cond_7

    move/from16 v16, v14

    :goto_2
    if-ne v5, v14, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    const/4 v14, 0x0

    :cond_3
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v17, "headset_plug"

    const v18, 0x7f020467

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setHeadsetVisiblity(Z)V

    :goto_3
    if-nez v15, :cond_4

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v17, "headset_plug"

    const v18, 0x7f0204c0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setHeadsetVisiblity(Z)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v15, 0x0

    goto :goto_1

    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    :cond_8
    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v17, v0

    const-string v18, "headset_plug"

    invoke-virtual/range {v17 .. v18}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v17, "headset_plug"

    const v18, 0x7f020466

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setHeadsetVisiblity(Z)V

    goto :goto_3
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "active"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateSyncState: active="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v3, "sync_active"

    const v4, 0x7f0204bd

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string v1, "ttyEnabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTTY: enabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTtyStatus:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHeadsetStatus(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final updateVolume()V
    .locals 8

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_0

    if-eq v4, v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "updateVolume: ringerMode="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " visible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-ne v4, v6, :cond_1

    const v3, 0x7f020489

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a007a

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v5, "volume"

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setVolumeVisiblity(Z)V

    :goto_2
    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const v3, 0x7f020488

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a007b

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public initTheming(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTheme:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    :cond_0
    return-void
.end method
