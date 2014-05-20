.class Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$5;
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
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "tileview"

    .prologue
    const/4 v1, 0x0

    .line 577
    if-nez p1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    const v2, 0x7f07002e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 582
    .local v0, moreview:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$5;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.systemui.QS_TIP_MORE"

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v1

    goto :goto_0
.end method
