.class public Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;
.super Landroid/app/Activity;
.source "QuickHSWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private alertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private checkBoxListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

.field private htcFontscale:F

.field private htcThemeID:I

.field private notShowAgain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcFontscale:F

    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcThemeID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->checkBoxListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;ZLandroid/net/wifi/WifiManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->switchWifiOnOff(ZLandroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private generateDialog()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2040328

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00ea

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->checkBoxListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCheckBox(Ljava/lang/CharSequence;ZLcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040151

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method private switchWifiOnOff(ZLandroid/net/wifi/WifiManager;)V
    .locals 5

    const/4 v1, 0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_saved_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "QuickHSWarningActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!save record wifi state fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "QuickHSWarningActivity"

    const-string v1, "dialogListener.cancel!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tethering_checkbox_tmous"

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    invoke-static {v10, v11, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hotspot_wizard_launch_page"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1

    move v4, v8

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v5

    const-string v10, "QuickHSWarningActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dialogListener.click! notShowAgain:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " showHotspotWizrd:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v8, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v8, "com.htc.WifiRouter"

    const-string v9, "com.htc.WifiRouter.HtcHotspotWizardMainActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v3, v8}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    move v4, v9

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v8, "QuickHSWarningActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!!!hotspot wizard not found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    new-instance v8, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;Landroid/net/wifi/WifiManager;)V

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcFontscale:F

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcThemeID:I

    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcThemeID:I

    invoke-virtual {p0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0d002e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->generateDialog()V

    const-string v2, "QuickHSWarningActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create:generate and show dialog! fontscale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcFontscale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " theme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcThemeID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "QuickHSWarningActivity"

    const-string v1, "destroy:dismiss and clean dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    return-void
.end method
