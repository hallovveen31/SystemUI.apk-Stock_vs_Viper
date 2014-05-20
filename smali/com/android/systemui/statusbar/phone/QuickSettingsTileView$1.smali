.class Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;
.super Ljava/lang/Object;
.source "QuickSettingsTileView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    if-eqz p1, :cond_0

    const v1, 0x7f07002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->access$0(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.systemui.QS_TIP_MORE"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
