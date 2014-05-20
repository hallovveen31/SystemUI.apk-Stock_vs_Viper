.class Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;
.super Ljava/lang/Object;
.source "VenomStatusBarExtension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCustomSettingsApp:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$3(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_1

    const-string v4, "Venom"

    const-string v5, "animateExpandSettingsPanel"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_0

    const-string v4, "Venom"

    const-string v5, "animateExpandNotificationsPanel"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_systemui_settings"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_systemui_settings_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_systemui_settings_activity"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v4, ""

    if-eq v1, v4, :cond_0

    const-string v4, ""

    if-eq v0, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto/16 :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setHtcIntentFlag(I)Landroid/content/Intent;

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "m0narX_StatusBarExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Err starting app!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method
