.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z


# instance fields
.field private final EXTREME_AUTOMODE_ON:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_ON_ASK:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_ON_ASK_OFF:Ljava/lang/String;

.field private final EXTREME_AUTOMODE_ON_ASK_OK:Ljava/lang/String;

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryLevelTextView2:Landroid/widget/TextView;

.field private mBatteryShowLowOnEndCall:Z

.field mBatteryStatus:I

.field private mBatteryView:Landroid/view/View;

.field mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

.field mHandler:Landroid/os/Handler;

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mIntentPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLastOrientation:I

.field mLastShowBatteryLowLevel:I

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

.field mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field mLowBatteryReminderLevels:[I

.field private final mLowBatteryWarningLevel:I

.field private final mLowBatteryWarningLevel2:I

.field private mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

.field mOVPChargerDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mOVPChargerListener:Landroid/content/DialogInterface$OnDismissListener;

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPlugType:I

.field private mPluggedBatteryLevel:I

.field private final mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

.field private mScreenOffTime:J

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mshowLowChargingWarning:Z

.field private mshowLowChargingWarning2:Z

.field private otherAppsContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/power/PowerUI$StatusBarHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/power/PowerUI$StatusBarHandler;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningLevel:I

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningLevel2:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLastShowBatteryLowLevel:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLastOrientation:I

    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->otherAppsContext:Landroid/content/Context;

    const-string v0, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->EXTREME_AUTOMODE_ON:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASK"

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->EXTREME_AUTOMODE_ON_ASK:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOK"

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->EXTREME_AUTOMODE_ON_ASK_OK:Ljava/lang/String;

    const-string v0, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOFF"

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->EXTREME_AUTOMODE_ON_ASK_OFF:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    new-instance v0, Lcom/android/systemui/power/PowerUI$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private PowerSaverOn(Landroid/content/Intent;)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPhoneState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLowBatteryDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBatteryShowLowOnEndCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "case"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PowerSaverOn] getCase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->onUnsupportedCharger(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->PowerSaverOn(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->checkHtcCustomizationReader()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerUI;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->stopLowBatteryTone()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showExtremeAutoPowerSaverModeAsk()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->closeExtremeAutoPowerSaverModeAsk()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerUI;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showLowChargingWarning()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showLowChargingWarning2()V

    return-void
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "PowerUI"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    const-string v3, "PowerUI"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get HtcCustomization, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private closeExtremeAutoPowerSaverModeAsk()V
    .locals 2

    const-string v0, "PowerUI"

    const-string v1, "+closeExtremeAutoPowerSaverModeAsk"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI"

    const-string v1, "close Dialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const-string v0, "PowerUI"

    const-string v1, "-closeExtremeAutoPowerSaverModeAsk"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeLastBatteryView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "PowerUI"

    const-string v2, "onBatteryLow"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->checkHtcCustomizationReader()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "battery_use_another_low_battery_condition"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "PowerUI"

    const-string v2, "Before SHOW_LOW_BATTERY_WARNING"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    :cond_1
    return-void
.end method

.method private onUnsupportedCharger(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showOverVoltageWarning()V

    return-void
.end method

.method private sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showExtremeAutoPowerSaverModeAsk()V
    .locals 3

    const-string v0, "PowerUI"

    const-string v1, "+showExtremeAutoPowerSaverModeAsk"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI"

    const-string v1, "Don\'t show Extreme Auto Power Saver Mode Ask Dialog again"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    const-string v0, "PowerUI"

    const-string v1, "-showExtremeAutoPowerSaverModeAsk"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showLowChargingWarning()V
    .locals 4

    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "PowerUI"

    const-string v3, "+showLowChargingWarning"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->closeLastBatteryView()V

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x7f0a0109

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x20401bd

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    const-string v2, "PowerUI"

    const-string v3, "-showLowChargingWarning"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private showLowChargingWarning2()V
    .locals 3

    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerUI"

    const-string v2, "+showLowChargingWarning2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->closeLastBatteryView()V

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x7f0a010b

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "PowerUI"

    const-string v2, "-showLowChargingWarning2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private showOverVoltageWarning()V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "PowerUI"

    const-string v5, "+showOverVoltageWarning"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    const-string v4, "PowerUI"

    const-string v5, "Don\'t show Over Voltage Warning Dialog again"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x20401ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    :cond_2
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOVPChargerDialog:Lcom/htc/dialog/HtcAlertDialog;

    const-string v4, "PowerUI"

    const-string v5, "-showOverVoltageWarning"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "PowerUI"

    const-string v5, "String charger_not_supported not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startLowBatteryTone()V
    .locals 9

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    const/16 v5, 0x32

    const/16 v4, 0x19

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->stopLowBatteryTone()V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    if-nez v0, :cond_1

    const/16 v0, 0x50

    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLowBatteryTone in CALL_SATATE_IDLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLowBatteryTone in CALL_STATE_OFFHOOK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating ToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2
.end method

.method private stopLowBatteryTone()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method

.method private final updateCallState(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLowBatteryDialog="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLowBatteryDialog2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBatteryShowLowOnEndCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPhoneState:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v2, :cond_3

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryShowLowOnEndCall:Z

    goto :goto_1
.end method


# virtual methods
.method dismissInvalidChargerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mLowBatteryDialog2="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-nez v0, :cond_3

    const-string v0, "null"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "PowerUI"

    const-string v1, "newConfig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLastOrientation:I

    const-string v0, "PowerUI"

    const-string v1, "orientation is different"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "PowerUI"

    const-string v1, "call redraw low battery dialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRedrawLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method redrawLowBatteryWarning()V
    .locals 2

    const-string v0, "PowerUI"

    const-string v1, "+redrawLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLastShowBatteryLowLevel:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarningWithLevel(I)V

    const-string v0, "PowerUI"

    const-string v1, "-redrawLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method showInvalidChargerDialog()V
    .locals 4

    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method showLowBatteryWarning()V
    .locals 2

    const-string v0, "PowerUI"

    const-string v1, "+showLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLastShowBatteryLowLevel:I

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarningWithLevel(I)V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->startLowBatteryTone()V

    const-string v0, "PowerUI"

    const-string v1, "-showLowBatteryWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method showLowBatteryWarningWithLevel(I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0108

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showLowBatteryWarning(), levelText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v5, "PowerUI"

    const-string v6, "mBatteryLevelTextView2 == null, prepare alter dialog - please connect charger"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f04

    invoke-static {v5, v6, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v5, 0x7f0a0106

    invoke-virtual {v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v5, 0x104000a

    invoke-virtual {v0, v5, v11}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x5880

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    const v5, 0x7f0a0010

    new-instance v6, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v5, v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    goto/16 :goto_0
.end method

.method public start()V
    .locals 7

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    iput-wide v3, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.powersaversetting"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mIntentPermissionReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.htc.permission.APP_PLATFORM"

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_0
.end method
