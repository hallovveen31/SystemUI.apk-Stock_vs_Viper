.class Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, ""

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isShowingSettings()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isNativeEqsEnabled()Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$2(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setHtcIntentFlag(I)Landroid/content/Intent;

    const/high16 v3, 0x1400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    invoke-virtual {p1, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isShowingSettings()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "com.m0narx.tweaks.fragmentsextensions.QuicksettingsDeleteAndRearrange"

    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.m0narx.tweaks"

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const-string v2, "com.m0narx.tweaks.fragmentsextensions.QuicksettingsHorizontalDeleteAndRearrange"

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0
.end method
