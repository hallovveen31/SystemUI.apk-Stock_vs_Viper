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

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcFontscale:F

    .line 41
    iput v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcThemeID:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 101
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->checkBoxListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;ZLandroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->switchWifiOnOff(ZLandroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private generateDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 92
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2040328

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00ea

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getString(I)Ljava/lang/String;

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

    .line 99
    return-void
.end method

.method private switchWifiOnOff(ZLandroid/net/wifi/WifiManager;)V
    .locals 5
    .parameter "wifiEnable"
    .parameter "wifiManager"

    .prologue
    const/4 v1, 0x1

    .line 213
    if-nez p2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 216
    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    .line 219
    .local v1, saveState:I
    :cond_1
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_saved_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const-string v2, "QuickHSWarningActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!save record wifi state fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .parameter "dialog"

    .prologue
    .line 196
    const-string v0, "QuickHSWarningActivity"

    const-string v1, "dialogListener.cancel!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->finish()V

    .line 206
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 120
    .local v5, ticktime:J
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tethering_checkbox_tmous"

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z

    invoke-static {v10, v11, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hotspot_wizard_launch_page"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1

    move v4, v8

    .line 127
    .local v4, showHotspotWizard:Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v5

    .line 128
    .local v0, elapse:J
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

    .line 131
    if-ne v4, v8, :cond_2

    .line 133
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const-string v8, "com.htc.WifiRouter"

    const-string v9, "com.htc.WifiRouter.HtcHotspotWizardMainActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :try_start_0
    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v3, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->finish()V

    .line 191
    :cond_0
    return-void

    .end local v0           #elapse:J
    .end local v4           #showHotspotWizard:Z
    :cond_1
    move v4, v9

    .line 124
    goto :goto_0

    .line 142
    .restart local v0       #elapse:J
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #showHotspotWizard:Z
    :catch_0
    move-exception v2

    .line 144
    .local v2, exception:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const-string v8, "QuickHSWarningActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!!!hotspot wizard not found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    .end local v2           #exception:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 153
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    new-instance v8, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;Landroid/net/wifi/WifiManager;)V

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    .local v0, time:J
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcFontscale:F

    .line 53
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcThemeID:I

    .line 54
    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->htcThemeID:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->setTheme(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0d002e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->generateDialog()V

    .line 60
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

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    const-string v0, "QuickHSWarningActivity"

    const-string v1, "destroy:dismiss and clean dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 75
    :cond_0
    return-void
.end method
