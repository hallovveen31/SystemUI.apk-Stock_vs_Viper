.class public Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
.super Landroid/content/BroadcastReceiver;
.source "VenomGesturesControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/VenomGesturesControl$ToSort;
    }
.end annotation


# static fields
.field public static ACTION_GESTURE_CONTROL:Ljava/lang/String;


# instance fields
.field private gestureAction:Lvenom/common/Gestures;

.field private gesturesEnabled:Z

.field private handleGestureListener:Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

.field private mContext:Landroid/content/Context;

.field private mGesturesView:Landroid/gesture/GestureOverlayView;

.field private mLibrary:Landroid/gesture/GestureLibrary;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "venom.intent.action.GESTURE_CONTROL"

    sput-object v0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->ACTION_GESTURE_CONTROL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gesturesEnabled:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl$1;-><init>(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->handleGestureListener:Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->setGestures()V

    return-void
.end method

.method private LoadLibary()Z
    .locals 4

    new-instance v1, Lvenom/common/Gestures;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lvenom/common/Gestures;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gestureAction:Lvenom/common/Gestures;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/gestures"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mLibrary:Landroid/gesture/GestureLibrary;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "Venom - Gestures"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " doesn\'t exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)Landroid/gesture/GestureLibrary;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mLibrary:Landroid/gesture/GestureLibrary;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)Lvenom/common/Gestures;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gestureAction:Lvenom/common/Gestures;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/VenomGesturesControl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gesturesEnabled:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->ACTION_GESTURE_CONTROL:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mLibrary:Landroid/gesture/GestureLibrary;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->LoadLibary()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->startGestures()V

    goto :goto_0
.end method

.method public setGestures()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_pulldown_gesture_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->LoadLibary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gesturesEnabled:Z

    :goto_0
    const-string v0, "m0narX_StatusBarExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setGestures = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gesturesEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gestureAction:Lvenom/common/Gestures;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mLibrary:Landroid/gesture/GestureLibrary;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->gesturesEnabled:Z

    goto :goto_0
.end method

.method public startGestures()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "m0narX_StatusBarExtension"

    const-string v1, "startGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/gesture/GestureOverlayView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->handleGestureListener:Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    return-void
.end method

.method public stopGestures()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    if-eqz v0, :cond_0

    const-string v0, "m0narX_StatusBarExtension"

    const-string v1, "stopGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->handleGestureListener:Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;

    invoke-virtual {v0, v1}, Landroid/gesture/GestureOverlayView;->removeOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->mGesturesView:Landroid/gesture/GestureOverlayView;

    :cond_0
    return-void
.end method
