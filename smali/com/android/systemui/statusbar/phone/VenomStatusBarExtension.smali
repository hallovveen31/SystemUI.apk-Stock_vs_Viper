.class public Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;
.super Ljava/lang/Object;
.source "VenomStatusBarExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;,
        Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;,
        Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;
    }
.end annotation


# static fields
.field public static final CURRENT_EQS:I = 0x1

.field public static final CURRENT_HIDE:I = 0x0

.field public static final CURRENT_QL:I = 0x2

.field public static final CURRENT_WIDGET:Ljava/lang/String; = "tweaks_horizontal_qs"

.field public static final OPEN_METHOD_BUTTON:I = 0x0

.field public static final OPEN_METHOD_SWIPE:I = 0x2

.field public static final OPEN_METHOD_TABS:I = 0x1

.field public static final QUICKSETTINGS_OPEN_METHOD:Ljava/lang/String; = "tweaks_hide_qs"

.field public static final QUICKSETTINGS_STYLE:Ljava/lang/String; = "tweaks_qs_style"

.field public static final STYLE_DISABLE:I = 0x2

.field public static final STYLE_HTC:I = 0x1

.field public static final STYLE_STOCK:I = 0x0

.field private static final SWITCH_ALL:I = 0x0

.field private static final SWITCH_EQS_ONLY:I = 0x2

.field private static final SWITCH_EQS_QL:I = 0x1

.field private static final SWITCH_OFF:I = -0x1

.field private static final SWITCH_QL_ONLY:I = 0x3

.field public static final TAG:Ljava/lang/String; = "m0narX_StatusBarExtension"


# instance fields
.field private SwipeDetect:Landroid/view/GestureDetector;

.field private aSlideDown:Landroid/view/animation/Animation;

.field private aSlideUp:Landroid/view/animation/Animation;

.field private aTabsFadeIn:Landroid/view/animation/Animation;

.field private aTabsFadeOut:Landroid/view/animation/Animation;

.field private clockStyle:I

.field private isAllowOnLS:Z

.field private isAllowedDuringCalls:Z

.field private isQuickQuickQS:Z

.field private mBattery:Landroid/view/View;

.field private mBatteryOnLeft:Z

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryText2:Landroid/widget/TextView;

.field private mCarrierExtended:Lcom/android/systemui/statusbar/info/InfoLine;

.field public mClearButtonHolder:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentQSOpenMethod:I

.field public mCurrentQSStyle:I

.field public mCustomSettingsApp:Z

.field private mEditButtonListener:Landroid/view/View$OnClickListener;

.field private mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

.field private mHeaderButtonListener:Landroid/view/View$OnClickListener;

.field private mHeaderButtonLongListener:Landroid/view/View$OnLongClickListener;

.field private mHeaderButtonsColor:I

.field private mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

.field private mNotificationIconArea:Landroid/widget/LinearLayout;

.field private mPanel:Landroid/view/View;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPlmnLabel:Landroid/widget/TextView;

.field private mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

.field private mQSSwitchN:Landroid/widget/TextView;

.field private mQSSwitchQS:Landroid/widget/TextView;

.field private mQSTabs:Landroid/widget/LinearLayout;

.field private mQsScroll:Landroid/widget/ScrollView;

.field private mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;

.field private mQuickPullDownLeft:Z

.field private mQuickPullDownRight:Z

.field public mSettingsButtonHolder:Landroid/widget/FrameLayout;

.field public mSettingsButtonHolder2:Landroid/widget/FrameLayout;

.field private mShakePhone:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;

.field private mSignalBatteryCluster:Landroid/widget/LinearLayout;

.field private mSignalOnLeft:Z

.field private mSpnLabel:Landroid/widget/TextView;

.field private mStatusBarHeader:Landroid/widget/LinearLayout;

.field private mTabsFadeOutActive:Z

.field public mTweaksHideEdit:Z

.field private mUseATTSignalStrength:Z

.field private mVenomBrightnessControl:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

.field private mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

.field private mWeatherWidget:Lcom/android/systemui/statusbar/weather/WeatherWidget;

.field private mWidgetsContainer:Landroid/widget/ViewSwitcher;

.field private mWidgetsDivider:Lcom/android/systemui/statusbar/widget/DividerView;

.field private myWidget:Lcom/android/systemui/statusbar/phone/ContactWidget;

.field timePressed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTweaksHideEdit:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCustomSettingsApp:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsDivider:Lcom/android/systemui/statusbar/widget/DividerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCarrierExtended:Lcom/android/systemui/statusbar/info/InfoLine;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWeatherWidget:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isQuickQuickQS:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTabsFadeOutActive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownLeft:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownRight:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mStatusBarHeader:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder2:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mClearButtonHolder:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->clockStyle:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowOnLS:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowedDuringCalls:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mUseATTSignalStrength:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalOnLeft:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryOnLeft:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$1;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonLongListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$2;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mEditButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$3;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonListener:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->timePressed:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setupViews()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomBrightnessControl:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQsScroll:Landroid/widget/ScrollView;

    new-instance v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQsScroll:Landroid/widget/ScrollView;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonLongListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonLongListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mEditButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$4;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$5;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    const v1, 0x7f050018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideUp:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideUp:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    const v1, 0x7f050017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideDown:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideDown:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$7;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->onStartExtension()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->ACTION_GESTURE_CONTROL:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private SetCarrierLabelTextColor()V
    .locals 4

    const v3, -0x777778

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_carrier_textcolor"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSpnLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_carrier_textcolor"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    return-void
.end method

.method static synthetic access$11(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSTabsVisibility()V

    return-void
.end method

.method static synthetic access$12(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderButtons()V

    return-void
.end method

.method static synthetic access$13(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSStyle()V

    return-void
.end method

.method static synthetic access$14(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isVerticalQSEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomBrightnessControl:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    return-object v0
.end method

.method static synthetic access$16(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonsColor:I

    return-void
.end method

.method static synthetic access$17(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowOnLS:Z

    return-void
.end method

.method static synthetic access$18(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowedDuringCalls:Z

    return-void
.end method

.method static synthetic access$19(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mUseATTSignalStrength:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isNativeEqsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateBatteryVisibility()V

    return-void
.end method

.method static synthetic access$21(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownRight:Z

    return-void
.end method

.method static synthetic access$22(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownLeft:Z

    return-void
.end method

.method static synthetic access$23(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isQuickQuickQS:Z

    return-void
.end method

.method static synthetic access$24(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateClockStyle()V

    return-void
.end method

.method static synthetic access$25(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->SetCarrierLabelTextColor()V

    return-void
.end method

.method static synthetic access$26(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderClockStyle()V

    return-void
.end method

.method static synthetic access$27(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeqsLocation()V

    return-void
.end method

.method static synthetic access$28(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setInfoLineBackgroundColor()V

    return-void
.end method

.method static synthetic access$29(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHeaderBackgroundColor()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    return v0
.end method

.method static synthetic access$30(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHandleBackgroundColor()V

    return-void
.end method

.method static synthetic access$31(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHEQSBackgroundColor()V

    return-void
.end method

.method static synthetic access$32(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    return-object v0
.end method

.method static synthetic access$33(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->refreshWidgets()V

    return-void
.end method

.method static synthetic access$34(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/preference/HtcQuickSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    return-object v0
.end method

.method static synthetic access$35(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/QuickLauncher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    return-object v0
.end method

.method static synthetic access$36(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$37(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTabsFadeOutActive:Z

    return-void
.end method

.method static synthetic access$38(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/widget/ViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$39(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/widget/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsDivider:Lcom/android/systemui/statusbar/widget/DividerView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->togglePannels()V

    return-void
.end method

.method static synthetic access$40(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->SwipeDetect:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/phone/VenomGesturesControl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->toggleWidgets()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->makeStatusBgBarColor()V

    return-void
.end method

.method static synthetic access$8(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->showCarrierLogo()V

    return-void
.end method

.method static synthetic access$9(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->showStatusLogo()V

    return-void
.end method

.method private closeAllWidgets()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "m0narX_StatusBarExtension"

    const-string v1, "closeAllWidgets()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->stopWidget()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_horizontal_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_horizontal_qs"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isShowingSettings()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->hideEditButton()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_0
.end method

.method private getIconVisiblity(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method private initHeaderClick()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v5, 0x7f070069

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$11;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$12;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v5, 0x7f070039

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AnalogClock;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/AnalogClock;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isNativeEqsEnabled()Z
    .locals 4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Venom"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "isNativeEqsEnabled: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "True"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "False"

    goto :goto_1
.end method

.method private isVerticalQSEnabled()Z
    .locals 4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    const-string v2, "Venom"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "isVerticalQSEnabled: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "True"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "False"

    goto :goto_1
.end method

.method private makeStatusBgBarColor()V
    .locals 12

    const/4 v11, 0x0

    const-string v9, "m0narX_StatusBarExtension"

    const-string v10, "makeStatusBgBarColor()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v9, "tweaks_notif_bgcolor"

    const/high16 v10, -0x100

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v9, "tweaks_statusbar_customimage"

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const-string v9, "tweaks_statusbar_customanim"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "bg_anim"

    const-string v10, "drawable"

    invoke-virtual {v7, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_2
    :goto_1
    if-nez v3, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/system/background_pulldown.png"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v10, "/data/system/background_pulldown.png"

    invoke-static {v10}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v9, "tweaks_notif_bgalpha"

    const/16 v10, 0xff

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private onStartExtension()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_block_pulldown"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowOnLS:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_block_pulldown_during_calls"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowedDuringCalls:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_att_signalstrength"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mUseATTSignalStrength:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_quick_pulldown"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownRight:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_quick_pulldown"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownLeft:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_hide_qs"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_auto_quick_settings"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isQuickQuickQS:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tweaks_systemui_dim"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_6
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadeEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_hide_edit"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTweaksHideEdit:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_headerbuttons_color"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonsColor:I

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$SwipeGesture;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->SwipeDetect:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSStyle()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->makeStatusBgBarColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setInfoLineBackgroundColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHeaderBackgroundColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHandleBackgroundColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHEQSBackgroundColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->showCarrierLogo()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->showStatusLogo()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->initHeaderClick()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderButtons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setRecentDialogStyle()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isVerticalQSEnabled()Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateBatteryVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateClockStyle()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeaderClockStyle()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateDateTweaks()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateContactWidget()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateSignalIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateBatteryIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateHeqsLocation()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mShakePhone:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$8;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$9;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateQSTabsVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->refreshWidgets()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->updateResources()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mStart:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->onStart()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto/16 :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_5

    :cond_8
    move v0, v2

    goto/16 :goto_6
.end method

.method private openNativeHEQS()V
    .locals 5

    const/4 v4, 0x2

    const-string v2, "m0narX_StatusBarExtension"

    const-string v3, "openNativeHEQS()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_horizontal_qs"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->stopWidget()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->setupApps()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideDown:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0700c4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isShowingSettings()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->hideEditButton()V

    :cond_2
    return-void
.end method

.method private openPowerWidget()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "m0narX_StatusBarExtension"

    const-string v2, "openPowerWidget()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_horizontal_qs"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    iget-object v1, v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->startWidget(Z)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideDown:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->reset()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->showEditButton()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0
.end method

.method private openQuickLaunch()V
    .locals 4

    const-string v1, "m0narX_StatusBarExtension"

    const-string v2, "openQuickLaunch()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_horizontal_qs"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->stopWidget()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->setupApps()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aSlideDown:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->reset()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isShowingSettings()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->hideEditButton()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0
.end method

.method private refreshWidgets()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_horizontal_qs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openPowerWidget()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openQuickLaunch()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->closeAllWidgets()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/16 v3, 0x32

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private setHEQSBackgroundColor()V
    .locals 4

    const-string v2, "m0narX_StatusBarExtension"

    const-string v3, "setHEQSBackgroundColor()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_heqs_bgcolor"

    const/high16 v3, -0x100

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setBackgroundColor(I)V

    return-void
.end method

.method private setHandleBackgroundColor()V
    .locals 6

    const v5, 0x7f020504

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_handle_bgcolor"

    const/high16 v4, -0x100

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v3, "tweaks_opaque_handle"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/LightingColorFilter;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setHeaderBackgroundColor()V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_app_bkg_top_src"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tweaks_header_bgcolor"

    const/high16 v5, -0x100

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v4, "tweaks_opaque_header"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mStatusBarHeader:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mStatusBarHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mStatusBarHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mStatusBarHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/LightingColorFilter;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mStatusBarHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setInfoLineBackgroundColor()V
    .locals 4

    const-string v2, "m0narX_StatusBarExtension"

    const-string v3, "setInfoLineBackgroundColor()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_extended_bgcolor"

    const/high16 v3, -0x100

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCarrierExtended:Lcom/android/systemui/statusbar/info/InfoLine;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/info/InfoLine;->setBackgroundColor(I)V

    return-void
.end method

.method private setRecentDialogStyle()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_recentapps_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    sput-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    goto :goto_0
.end method

.method private setupViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBattery:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder2:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mClearButtonHolder:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mStatusBarHeader:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHandle:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSpnLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setAnimateFirstView(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickLauncher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickLauncher:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/DividerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsDivider:Lcom/android/systemui/statusbar/widget/DividerView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/info/InfoLine;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCarrierExtended:Lcom/android/systemui/statusbar/info/InfoLine;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/weather/WeatherWidget;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWeatherWidget:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->myWidget:Lcom/android/systemui/statusbar/phone/ContactWidget;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->myWidget:Lcom/android/systemui/statusbar/phone/ContactWidget;

    return-void
.end method

.method private showCarrierLogo()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCarrierLabel()Lcom/android/systemui/statusbar/phone/CarrierLabel;

    move-result-object v2

    const v3, 0x7f0700a4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_carrier_icon"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/carrier_icon.png"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    const-string v2, "/data/system/carrier_icon.png"

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_carrier_icon"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showStatusLogo()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v6, 0x7f0700a3

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_status_icon"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-string v4, "/data/system/status_icon.png"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_0
    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v5, Landroid/graphics/LightingColorFilter;

    const/4 v6, -0x1

    const/high16 v7, -0x100

    invoke-direct {v5, v6, v7}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v5, "Venom"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error loading "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_status_icon"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_status_icon"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private togglePannels()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isShowingSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_0
.end method

.method private toggleWidgets()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    :pswitch_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_horizontal_qs"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_widget_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openPowerWidget()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openQuickLaunch()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->closeAllWidgets()V

    goto :goto_1

    :pswitch_4
    packed-switch v0, :pswitch_data_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openPowerWidget()V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openQuickLaunch()V

    goto :goto_1

    :pswitch_6
    packed-switch v0, :pswitch_data_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openPowerWidget()V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->closeAllWidgets()V

    goto :goto_1

    :pswitch_8
    packed-switch v0, :pswitch_data_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->openQuickLaunch()V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->closeAllWidgets()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private updateBatteryVisibility()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBattery:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_hide_battery"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateClockStyle()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_clock_style"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->clockStyle:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->clockStyle:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f070069

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0700b2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateHeaderButtons()V
    .locals 15

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCustomSettingsApp:Z

    iget v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    if-nez v12, :cond_1

    iget v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const v13, 0x7f02013e

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v13, 0x7f020135

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "tweaks_hide_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "tweaks_systemui_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "tweaks_systemui_settings_package"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "tweaks_systemui_settings_activity"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v12, ""

    if-eq v2, v12, :cond_0

    const-string v12, ""

    if-ne v0, v12, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    const v13, 0x7f020523

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v13, 0x7f020523

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    :try_start_0
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    const-string v13, "header_icon_width"

    const-string v14, "integer"

    invoke-virtual {p0, v12, v13, v14}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->getResourceByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v4, v8, v8, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->clearColorFilter()V

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCustomSettingsApp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    const/4 v6, 0x0

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTweaksHideEdit:Z

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder2:Landroid/widget/FrameLayout;

    :goto_4
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    if-eq v10, v6, :cond_4

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "tweaks_systemui_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    iget v13, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonsColor:I

    invoke-virtual {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHeaderButtonColor(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    iget v13, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonsColor:I

    invoke-virtual {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHeaderButtonColor(Landroid/widget/ImageView;I)V

    :cond_5
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    check-cast v12, Landroid/widget/ImageView;

    iget v13, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonsColor:I

    invoke-virtual {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHeaderButtonColor(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v12, Landroid/widget/ImageView;

    iget v13, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHeaderButtonsColor:I

    invoke-virtual {p0, v12, v13}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setHeaderButtonColor(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string v12, "m0narX_tweaks"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Err getting custom app!"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder:Landroid/widget/FrameLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mClearButtonHolder:Landroid/widget/FrameLayout;

    goto/16 :goto_4
.end method

.method private updateHeaderClockStyle()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_headerclock_style"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AnalogClock;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/AnalogClock;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private updateHeqsLocation()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v4, 0x7f0700c2

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v4, 0x7f0700c3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_heqs_location"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    if-eq v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateQSStyle()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_qs_style"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reload()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_neqs_bgcolor"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setBackgroundColor(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->onStop()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->unload()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_veqs_bgcolor"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQsScroll:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->onStop()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->loadSettings()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->onStop()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->unload()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateQSTabsVisibility()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    mul-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method


# virtual methods
.method public brightnessControl(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomBrightnessControl:Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/VenomBrightnessControl;->brightnessControl(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public checkQSTabs()V
    .locals 5

    const v4, 0x7f020572

    const v3, 0x7f020571

    const/4 v2, -0x1

    const v1, -0x666667

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public collapseStatusBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    return-void
.end method

.method public completePartialFlip()V
    .locals 2

    const-string v0, "Venom"

    const-string v1, "VenomStatusBarExtension->completePartialFlip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    goto :goto_0
.end method

.method protected dismissKeyGuard()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getResourceByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hideEditButton()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSettingsButtonHolder2:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setupClearAllButton(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    return-void
.end method

.method public hideStatusBarIcon(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "alarm_clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tweaks_show_alarm_icon"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->getIconVisiblity(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGesturesEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_pulldown_gesture_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isHEQSShowing()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_horizontal_qs"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isPulldownAllowed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowedDuringCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isAllowOnLS:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isQuickPullDownLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownLeft:Z

    return v0
.end method

.method public isQuickPullDownRight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQuickPullDownRight:Z

    return v0
.end method

.method public isShowingSettings()Z
    .locals 3

    const-string v1, "Venom"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "isShowingSettings: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "True"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "False"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCollapsed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "venom.intent.action.STATUSBAR_NOT_EXTENDED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "m0narX_StatusBarExtension"

    const-string v2, "onCollapse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->stopGestures()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCarrierExtended:Lcom/android/systemui/statusbar/info/InfoLine;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/info/InfoLine;->cancelRefresh()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mShakePhone:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->stop()V

    return-void
.end method

.method public onExpanded()V
    .locals 2

    const-string v0, "m0narX_StatusBarExtension"

    const-string v1, "onExpanded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->checkQSTabs()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTabsFadeOutActive:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public onStartCollapse()V
    .locals 2

    const-string v0, "m0narX_StatusBarExtension"

    const-string v1, "onStartCollapse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSOpenMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSTabs:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->aTabsFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onStartExpand()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "venom.intent.action.STATUSBAR_EXTENDED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "m0narX_StatusBarExtension"

    const-string v2, "onStartExpand()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isQuickQuickQS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasCancelableItems()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCarrierExtended:Lcom/android/systemui/statusbar/info/InfoLine;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/info/InfoLine;->startRefresh()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWeatherWidget:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->updateWeather()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mShakePhone:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$ShakePhone;->start()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->refreshWidgets()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->mStart:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->onStart()V

    :cond_1
    return-void
.end method

.method public partialFlip(F)V
    .locals 6

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v0, 0x0

    const-string v2, "Venom"

    const-string v3, "VenomStatusBarExtension->partialFlip"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsViewAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_5
    const/high16 v2, -0x4080

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpg-float v2, p1, v5

    if-gez v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    neg-float v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    neg-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotifications()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTweaksHideEdit:Z

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isHEQSShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlipSettingsView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTweaksHideEdit:Z

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->isHEQSShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setHeaderButtonColor(Landroid/widget/ImageView;I)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x100

    invoke-direct {v0, v1, p2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method public setStatusBarBackgroundMode(I)V
    .locals 3

    const-string v0, "m0narX_StatusBarExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStatusBarBackgroundMode() mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$10;-><init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public setupClearAllButton(Landroid/widget/FrameLayout;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showClock(Z)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->clockStyle:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showEditButton()V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "Venom"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Venom"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mTweaksHideEdit:Z

    if-nez v0, :cond_1

    const-string v0, "Venom"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mClearButtonHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->setupClearAllButton(Landroid/widget/FrameLayout;)V

    const-string v0, "Venom"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const-string v0, "Venom"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "Venom"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/high16 v5, 0x3f80

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->dismissKeyGuard()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->collapseStatusBar()V

    const/high16 v1, 0x1000

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to start activity"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public switchToGestures()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mVenomGesturesControl:Lcom/android/systemui/statusbar/phone/VenomGesturesControl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/VenomGesturesControl;->startGestures()V

    return-void
.end method

.method public updateBatteryIcon()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_battery_left"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBattery:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    if-ne v1, v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText2:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBattery:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBattery:Landroid/view/View;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryOnLeft:Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBattery:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBattery:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryOnLeft:Z

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public updateContactWidget()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_notif_contact_widget"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->myWidget:Lcom/android/systemui/statusbar/phone/ContactWidget;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->refreshWidget()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->myWidget:Lcom/android/systemui/statusbar/phone/ContactWidget;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getWidgetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->myWidget:Lcom/android/systemui/statusbar/phone/ContactWidget;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ContactWidget;->getWidgetView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDateTweaks()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_hide_date"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_statusbar_date_color"

    const v3, -0x585859

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setTextColor(I)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchN:Landroid/widget/TextView;

    const v1, 0x7f0a0152

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mQSSwitchQS:Landroid/widget/TextView;

    const v1, 0x7f0a0151

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mCurrentQSStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mHtcQuickSettings:Lcom/android/systemui/statusbar/preference/HtcQuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/HtcQuickSettings;->updateResources()V

    :cond_1
    return-void
.end method

.method public updateSignalIcons()V
    .locals 10

    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_left"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f070066

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v7, 0x7f07004d

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v7, 0x7f07005a

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/widget/SignalBarView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    if-ne v0, v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mBatteryOnLeft:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const/4 v8, 0x2

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v1, v6}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->addView(Landroid/view/View;I)V

    invoke-virtual {v2, v3, v9}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->addView(Landroid/view/View;I)V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalOnLeft:Z

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    if-ne v0, v7, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalBatteryCluster:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->addView(Landroid/view/View;I)V

    invoke-virtual {v2, v1, v9}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->addView(Landroid/view/View;I)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mSignalOnLeft:Z

    :cond_1
    return-void

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public useATTSignalStrength()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mUseATTSignalStrength:Z

    return v0
.end method
