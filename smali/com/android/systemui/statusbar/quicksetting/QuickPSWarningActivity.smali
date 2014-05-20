.class public Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;
.super Landroid/app/Activity;
.source "QuickPSWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private alertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private checkbox:Lcom/htc/widget/HtcCheckBox;

.field private htcFontscale:F

.field private htcThemeID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "QuickPSWarningActivity"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->DEBUG:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->htcFontscale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->htcThemeID:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->checkbox:Lcom/htc/widget/HtcCheckBox;

    return-void
.end method

.method private generateDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "QuickPSWarningActivity"

    const-string v3, "!!!!!cannot retrieve layout inflater from service manager"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v2, 0x7f04000c

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    const v2, 0x7f070022

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->checkbox:Lcom/htc/widget/HtcCheckBox;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "QuickPSWarningActivity"

    const-string v1, "dialogListener.cancel!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v2, 0x1

    const-string v3, "QuickPSWarningActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialogListener.click!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->checkbox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checkbox:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "user_powersaver_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.htcpowermanager.powersaver.ON_NOTIF_TOGGLE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "toggle_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->checkbox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaver_manual_info_dlg"

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void

    :cond_3
    const-string v1, ""

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->htcFontscale:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->htcThemeID:I

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->htcThemeID:I

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0d002e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->generateDialog()V

    const-string v0, "QuickPSWarningActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create:generate and show dialog! fontscale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->htcFontscale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " theme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->htcThemeID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "QuickPSWarningActivity"

    const-string v1, "destroy:dismiss and clean dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickPSWarningActivity;->alertDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    return-void
.end method
