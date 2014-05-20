.class public Lcom/android/systemui/statusbar/phone/BatteryBar;
.super Landroid/widget/RelativeLayout;
.source "BatteryBar.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BOTTOM_FLAG:I = 0x2

.field private static final FAST_ANIM_DURATION:I = 0x320

.field private static final INT_ANIM_DURATION:I = 0x9c4

.field private static final SLOW_ANIM_DURATION:I = 0xdac

.field private static final STYLE_DISABLE:I = 0x2

.field private static final STYLE_SHOW:I = 0x1

.field private static final TOP_FLAG:I = 0x1


# instance fields
.field private final FLAG_MODE_ACL:I

.field private final FLAG_MODE_ACLDCL:I

.field private final FLAG_MODE_DCL:I

.field private final FLAG_MODE_NORM:I

.field private final FLAG_NORM:I

.field private final FLAG_PULSE:I

.field private anim_mode:I

.field battbar:Landroid/widget/RelativeLayout;

.field private batteryLevel:I

.field private batteryStatus:I

.field charge:Landroid/view/View;

.field chargeholder:Landroid/widget/RelativeLayout;

.field private debug:Ljava/lang/Boolean;

.field private height:I

.field private high_lvl:I

.field private low_lvl:I

.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mRunning:Ljava/lang/Boolean;

.field private pulse_mode:I

.field private style:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->debug:Ljava/lang/Boolean;

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->low_lvl:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->high_lvl:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->pulse_mode:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_ACLDCL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_ACL:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_DCL:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_NORM:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_PULSE:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_NORM:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->debug:Ljava/lang/Boolean;

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->low_lvl:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->high_lvl:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->pulse_mode:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_ACLDCL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_ACL:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_DCL:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_MODE_NORM:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_PULSE:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->FLAG_NORM:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryBar$2;-><init>(Lcom/android/systemui/statusbar/phone/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/BatteryBar;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    return-void
.end method

.method static access$1(Lcom/android/systemui/statusbar/phone/BatteryBar;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    return-void
.end method

.method private getBatteryColour()Ljava/lang/Integer;
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_auto_color"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_color"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_color_auto_charging"

    const v5, -0x6c2b00

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_low_cut"

    const/16 v5, 0xf

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_high_cut"

    const/16 v5, 0x28

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    if-ge v3, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_color_auto_low"

    const v5, -0x2ab500

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    if-ge v3, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_color_auto_medium"

    const v5, -0x2a5d00

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_color_auto_regular"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, -0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->charge:Landroid/view/View;

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->debug:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    if-nez v3, :cond_0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->charge:Landroid/view/View;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->charge:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getBatteryColour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    invoke-direct {v1, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getBatteryColour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->charge:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryBar;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryBar;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->updateBatteryBar()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/BatteryBar;Landroid/os/Handler;)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;->observe()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_anim_on"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anim_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anim_pulse_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->pulse_mode:I

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v6, v8, v8, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    if-ne v3, v5, :cond_2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->pulse_mode:I

    if-ne v3, v5, :cond_0

    invoke-virtual {v0, v7}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    :cond_0
    const-string v3, "battbar"

    const-string v4, "start anim"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    if-ne v3, v7, :cond_3

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anim_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anim_pulse_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->pulse_mode:I

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    invoke-direct {v1, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    if-ne v3, v5, :cond_7

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->pulse_mode:I

    if-ne v3, v5, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    :cond_6
    const-string v3, "battbar"

    const-string v4, "start anim"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    if-ne v3, v7, :cond_8

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->anim_mode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_9
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    const-string v0, "battbar"

    const-string v1, "stop anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method final updateBatteryBar()V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getBatteryColour()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "battery_bar_style"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->style:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "battery_bar_height"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->style:I

    if-ne v8, v11, :cond_4

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->height:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->height:I

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->height:I

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x64

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const-string v8, "battbar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getId()I

    move-result v8

    invoke-virtual {v4, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->charge:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    if-eq v8, v12, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    if-eq v8, v13, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->stop()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->height:I

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v13, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->charge:Landroid/view/View;

    const v9, -0x50000001

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->start()V

    goto :goto_1

    :cond_4
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setVisibility(I)V

    goto :goto_1
.end method
