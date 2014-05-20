.class Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VenomStatusBarExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeGesture"
.end annotation


# instance fields
.field private final SWIPE_MAX_OFFPATH:I

.field private final SWIPE_MIN_DISTANCE:I

.field private final SWIPE_THRESHOLD_VELOCITY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->SWIPE_MIN_DISTANCE:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->SWIPE_MAX_OFFPATH:I

    const/16 v0, 0x82

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "Venom"

    const-string v1, "DoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$5(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Venom"

    const-string v1, "Active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$5(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->stopGestures()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "Venom"

    const-string v1, "NotActive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_pulldown_gesture_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Venom"

    const-string v1, "GesturesEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->switchToGestures()V

    goto :goto_0

    :cond_1
    const-string v0, "Venom"

    const-string v1, "GesturesDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x4302

    const/high16 v3, 0x42b4

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$3(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$5(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->togglePannels()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$4(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$3(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$5(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->togglePannels()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$4(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #calls: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->toggleWidgets()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$6(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "tweaks_systemui_carrier"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_2

    const-string v7, "tweaks_systemui_carrier_package"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "tweaks_systemui_carrier_activity"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string v7, ""

    if-eq v3, v7, :cond_0

    const-string v7, ""

    if-ne v0, v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v7, "m0narX_StatusBarExtension"

    const-string v8, "Carrier label custom action=)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v6, "m0narX_StatusBarExtension"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Err starting app!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->timePressed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_clock_app"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_clock_activity"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_clock_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v2, v4, :cond_1

    const-string v4, ""

    if-eq v3, v4, :cond_1

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to start "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "Package name is blank"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_date_app"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_date_activity"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_date_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v2, v4, :cond_3

    const-string v4, ""

    if-eq v3, v4, :cond_3

    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to start "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "Package name is blank"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
