.class Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver$1;
.super Ljava/lang/Object;
.source "QuickLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;->access$0(Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;)Lcom/android/systemui/statusbar/phone/QuickLauncher;

    move-result-object v1

    #getter for: Lcom/android/systemui/statusbar/phone/QuickLauncher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->access$0(Lcom/android/systemui/statusbar/phone/QuickLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_rosie_theme"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "tweaks_quicklauncher"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickLauncher$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
