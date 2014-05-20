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

.field private mTtyStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->HTC_DEBUG:Z

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->sBCheckSleepMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 68
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 82
    const-string v12, "felica_lock"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->EXTRA_FELICA_LOCK_KEY:Ljava/lang/String;

    .line 83
    const-string v12, "felica_lock"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->SLOT_FELICA_ICON:Ljava/lang/String;

    .line 84
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->EXTRA_FELICA_ACTION_LOCK:Z

    .line 85
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->EXTRA_FELICA_ACTION_UNLOCK:Z

    .line 86
    const-string v12, "com.htc.intent.action.FELICA_LOCK"

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->ACTION_FELICA_ICON_LOCK:Ljava/lang/String;

    .line 89
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Z

    .line 90
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    .line 91
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    .line 103
    new-instance v12, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 141
    const-string v12, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 144
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v12, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v12, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v12, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v12, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v12, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v12, "android.intent.action.HAC_STATE_CHANGED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v12, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v12, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v6, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 159
    .local v2, adapter:Landroid/bluetooth/BluetoothAdapter;
    const v3, 0x7f02032d

    .line 160
    .local v3, bluetoothIcon:I
    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v12

    const/16 v13, 0xc

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 162
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 163
    const v3, 0x7f02032e

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v12, :cond_1

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "bluetooth"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v3, v14, v15}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 169
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateVolume()V

    .line 172
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 175
    invoke-static {}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;->isSupported()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 176
    new-instance v12, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/statusbar/policy/LocationBasedServiceController;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    .line 179
    :cond_2
    sget v12, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v13, 0x1f

    if-ne v12, v13, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "felica_lock"

    const v14, 0x7f020452

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v13, "felica_lock"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 182
    new-instance v5, Landroid/content/IntentFilter;

    const-string v12, "com.htc.intent.action.FELICA_LOCK"

    invoke-direct {v5, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    .local v5, felicaFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v13, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V

    const-string v14, "com.htc.permission.APP_PLATFORM"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v5, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 195
    .end local v5           #felicaFilter:Landroid/content/IntentFilter;
    :cond_3
    sget-boolean v12, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->sBCheckSleepMode:Z

    if-nez v12, :cond_6

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->getPersistedWirelessSleepMode()V

    .line 197
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.android.systemui.statusbar.action.sleep_mode_start"

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v9, intentSleepModeStart:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v13, 0x1f90

    const/4 v14, 0x0

    invoke-static {v12, v13, v9, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    .line 199
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.android.systemui.statusbar.action.sleep_mode_end"

    const/4 v13, 0x0

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .local v8, intentSleepModeEnd:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/16 v13, 0x1f91

    const/4 v14, 0x0

    invoke-static {v12, v13, v8, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v13, "alarm"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 202
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepModeEnabled:Z

    if-eqz v12, :cond_8

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 204
    .local v4, calendar:Ljava/util/Calendar;
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    mul-int/lit8 v12, v12, 0x3c

    const/16 v13, 0xc

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int v7, v12, v13

    .line 205
    .local v7, iCurrentSecond:I
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 206
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 207
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 208
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-ge v12, v13, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-lt v7, v12, :cond_4

    .line 210
    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 213
    :cond_4
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v14, v14

    add-long v10, v12, v14

    .line 214
    .local v10, lTriggerTime:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SleepMode start at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepStartTimeSecond:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    if-le v12, v13, :cond_5

    const/16 v12, 0x3c

    if-le v7, v12, :cond_5

    .line 216
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 219
    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 221
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 222
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHTCWirelessSleepEndTimeSecond:I

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v14, v14

    add-long v10, v12, v14

    .line 223
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SleepMode end at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 230
    .end local v4           #calendar:Ljava/util/Calendar;
    .end local v7           #iCurrentSecond:I
    .end local v10           #lTriggerTime:J
    :goto_1
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->sBCheckSleepMode:Z

    .line 235
    .end local v8           #intentSleepModeEnd:Landroid/content/Intent;
    .end local v9           #intentSleepModeStart:Landroid/content/Intent;
    :cond_6
    return-void

    .line 161
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 226
    .restart local v8       #intentSleepModeEnd:Landroid/content/Intent;
    .restart local v9       #intentSleepModeStart:Landroid/content/Intent;
    :cond_8
    const-string v12, "clear sleep mode alarm"

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPowerSleepModeEndPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHeadsetStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHACStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateFelicaLock(Landroid/content/Intent;)V

    return-void
.end method

.method private getPersistedWirelessSleepMode()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method private getPhoneType()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method private static final printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 429
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    return-void
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 238
    const-string v1, "alarmSet"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 239
    .local v0, alarmSet:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAlarm: set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 240
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    const v3, 0x7f0201b9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 280
    const v2, 0x7f02032d

    .line 281
    .local v2, iconId:I
    const/4 v1, 0x0

    .line 282
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 285
    .local v3, state:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBluetooth: action="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 286
    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 302
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mBluetoothEnabled:Z

    if-eqz v4, :cond_4

    .line 303
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "bluetooth"

    invoke-virtual {v4, v6, v2, v5, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 306
    .end local v3           #state:I
    :goto_2
    return-void

    .restart local v3       #state:I
    :cond_0
    move v4, v5

    .line 286
    goto :goto_0

    .line 287
    .end local v3           #state:I
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 290
    .restart local v3       #state:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBluetooth: action="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 291
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 292
    const v2, 0x7f02032e

    .line 293
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f0a003f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 295
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0040

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 299
    .end local v3           #state:I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBluetooth: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    .restart local v3       #state:I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private final updateFelicaLock(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 399
    const-string v1, "felica_lock"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 400
    .local v0, gotExtra:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "felica lock action with extra felica_lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 401
    if-ne v0, v4, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "felica_lock"

    invoke-virtual {v1, v2, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    if-nez v0, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "felica_lock"

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateGps(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, action:Ljava/lang/String;
    const-string v2, "enabled"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 385
    .local v1, enabled:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGps: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 386
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v4, 0x7f020464

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 389
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 391
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v4, 0x7f020463

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private updateHACStatus(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 373
    const-string v2, "enabled"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 374
    .local v0, enable:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHACStatus: enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 375
    if-eqz v0, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "hac_status"

    const v4, 0x7f020465

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 380
    :goto_1
    return-void

    .line 373
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 378
    .restart local v0       #enable:Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "hac_status"

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateHeadsetStatus(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 321
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    .line 322
    const-string v7, "state"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 323
    .local v5, nState:I
    const-string v7, "microphone"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 324
    .local v4, nMicState:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateHeadsetStatus: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " microphone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 341
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTtyStatus:Z

    .line 342
    .local v3, bTTY:Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 343
    if-nez v3, :cond_1

    .line 344
    const-string v7, "bTTY == false: %d"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 345
    and-int/lit8 v7, v5, 0x20

    if-gtz v7, :cond_0

    and-int/lit8 v7, v5, 0x40

    if-lez v7, :cond_1

    .line 346
    :cond_0
    const/4 v3, 0x1

    .line 347
    const-string v7, "(nState & 32) > 0 || (nState & 64) > 0: %d"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 352
    :cond_1
    and-int/lit8 v7, v5, 0x18

    if-lez v7, :cond_3

    move v0, v2

    .line 353
    .local v0, bFM:Z
    :goto_0
    if-ne v5, v2, :cond_4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 354
    .local v1, bMic:Z
    :goto_1
    if-ne v5, v2, :cond_5

    if-nez v4, :cond_5

    .line 356
    .local v2, bNoMic:Z
    :goto_2
    if-eqz v1, :cond_6

    .line 357
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "headset_plug"

    const v9, 0x7f020467

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 365
    :goto_3
    if-eqz v0, :cond_8

    .line 370
    :cond_2
    :goto_4
    return-void

    .end local v0           #bFM:Z
    .end local v1           #bMic:Z
    .end local v2           #bNoMic:Z
    :cond_3
    move v0, v6

    .line 352
    goto :goto_0

    .restart local v0       #bFM:Z
    :cond_4
    move v1, v6

    .line 353
    goto :goto_1

    .restart local v1       #bMic:Z
    :cond_5
    move v2, v6

    .line 354
    goto :goto_2

    .line 358
    .restart local v2       #bNoMic:Z
    :cond_6
    if-eqz v2, :cond_7

    .line 359
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "headset_plug"

    const v9, 0x7f020466

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_3

    .line 361
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "headset_plug"

    invoke-virtual {v6, v7}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_4

    .line 367
    :cond_8
    if-eqz v3, :cond_2

    .line 368
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v8, "headset_plug"

    const v9, 0x7f0204c0

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_4
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 248
    const-string v1, "active"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 249
    .local v0, isActive:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSyncState: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "sync_active"

    const v3, 0x7f0204bd

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "sync_active"

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, action:Ljava/lang/String;
    const-string v2, "ttyEnabled"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 311
    .local v1, enabled:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTTY: enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 312
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mTtyStatus:Z

    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mHeadsetIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateHeadsetStatus(Landroid/content/Intent;)V

    .line 316
    :cond_0
    return-void
.end method

.method private final updateVolume()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 258
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 259
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 260
    .local v3, ringerMode:I
    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_1

    :cond_0
    move v4, v6

    .line 262
    .local v4, visible:Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVolume: ringerMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " visible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V

    .line 263
    if-eqz v4, :cond_3

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, contentDescription:Ljava/lang/String;
    if-ne v3, v6, :cond_2

    .line 267
    const v2, 0x7f020489

    .line 268
    .local v2, iconId:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a007a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "volume"

    invoke-virtual {v6, v7, v2, v5, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 277
    .end local v1           #contentDescription:Ljava/lang/String;
    .end local v2           #iconId:I
    :goto_2
    return-void

    .end local v4           #visible:Z
    :cond_1
    move v4, v5

    .line 260
    goto :goto_0

    .line 270
    .restart local v1       #contentDescription:Ljava/lang/String;
    .restart local v4       #visible:Z
    :cond_2
    const v2, 0x7f020488

    .line 271
    .restart local v2       #iconId:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a007b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 275
    .end local v1           #contentDescription:Ljava/lang/String;
    .end local v2           #iconId:I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_2
.end method
