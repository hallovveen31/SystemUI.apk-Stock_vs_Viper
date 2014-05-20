.class Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "QuickLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;)Lcom/android/systemui/statusbar/phone/QuickLauncher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    return-object v0
.end method


# virtual methods
.method public observe()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onChange(Z)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->access$0(Lcom/android/systemui/statusbar/phone/QuickLauncher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->checkEnabled()V

    const-string v2, "tweaks_rosie_theme"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickLauncher;->venomIcons:Lcom/m0narx/framework/theme/AppIcons;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->access$1(Lcom/android/systemui/statusbar/phone/QuickLauncher;)Lcom/m0narx/framework/theme/AppIcons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/m0narx/framework/theme/AppIcons;->getTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    const-string v3, ""

    #setter for: Lcom/android/systemui/statusbar/phone/QuickLauncher;->CurrentApps:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->access$2(Lcom/android/systemui/statusbar/phone/QuickLauncher;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->setupApps()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
