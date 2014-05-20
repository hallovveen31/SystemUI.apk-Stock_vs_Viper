.class Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;
.super Ljava/lang/Object;
.source "VenomPolicyTheming.java"

# interfaces
.implements Lcom/android/systemui/statusbar/theming/ThemeSettings$onSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;->this$0:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntSettingChanged(Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x1

    const-string v2, "tweaks_show_alarm_icon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;->this$0:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    #getter for: Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->access$0(Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "next_alarm_formatted"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;->this$0:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    #getter for: Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mService:Landroid/app/StatusBarManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->access$1(Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;)Landroid/app/StatusBarManager;

    move-result-object v2

    const-string v3, "alarm_clock"

    if-ne p2, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStringSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v1, "tweaks_systemui_theme_alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;->this$0:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    #getter for: Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->access$0(Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming$1;->this$0:Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;

    const-string v2, "alarm_clock"

    const v3, 0x7f0201b9

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/theming/VenomPolicyTheming;->setIcon(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
