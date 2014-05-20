.class public Lcom/android/systemui/statusbar/policy/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# instance fields
.field private clockColor:I

.field private mAttached:Z

.field private mAttributeSet:Landroid/util/AttributeSet;

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mI:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private final mSettings:[Ljava/lang/String;

.field private mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "tweaks_headerclock_color"

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, "tweaks_headerclockhands_color"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mSettings:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mAttributeSet:Landroid/util/AttributeSet;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mI:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/AnalogClock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/AnalogClock$1;-><init>(Lcom/android/systemui/statusbar/policy/AnalogClock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mAttributeSet:Landroid/util/AttributeSet;

    sget-object v3, Lcom/android/internal/R$styleable;->AnalogClock:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mI:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->updateResources()V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialWidth:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialHeight:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/AnalogClock$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AnalogClock$2;-><init>(Lcom/android/systemui/statusbar/policy/AnalogClock;Landroid/os/Handler;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/statusbar/policy/AnalogClock$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/AnalogClock$3;-><init>(Lcom/android/systemui/statusbar/policy/AnalogClock;Landroid/database/ContentObserver;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/AnalogClock;Landroid/text/format/Time;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/AnalogClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/AnalogClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->updateResources()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/policy/AnalogClock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/policy/AnalogClock;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mSettings:[Ljava/lang/String;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 6

    const/high16 v5, 0x4270

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinutes:F

    int-to-float v3, v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHour:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mChanged:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const/16 v3, 0x81

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateResources()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    iput v6, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mI:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_headerclock_color"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_headerclockhands_color"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    const v3, 0x1080212

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    const v3, 0x1080213

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const v3, 0x1080214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mChanged:Z

    if-eqz v8, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/AnalogClock;->mChanged:Z

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mLeft:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mTop:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    div-int/lit8 v16, v10, 0x2

    div-int/lit8 v18, v13, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-lt v10, v11, :cond_5

    const/4 v9, 0x0

    if-lt v13, v14, :cond_5

    :goto_0
    if-eqz v8, :cond_1

    div-int/lit8 v20, v11, 0x2

    sub-int v20, v16, v20

    div-int/lit8 v21, v14, 0x2

    sub-int v21, v18, v21

    div-int/lit8 v22, v11, 0x2

    add-int v22, v22, v16

    div-int/lit8 v23, v14, 0x2

    add-int v23, v23, v18

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v20, 0x43b4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHour:F

    move/from16 v21, v0

    const/high16 v22, 0x4140

    div-float v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/lit8 v20, v12, 0x2

    sub-int v20, v16, v20

    div-int/lit8 v21, v15, 0x2

    sub-int v21, v18, v21

    div-int/lit8 v22, v12, 0x2

    add-int v22, v22, v16

    div-int/lit8 v23, v15, 0x2

    add-int v23, v23, v18

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v20, 0x43b4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinutes:F

    move/from16 v21, v0

    const/high16 v22, 0x4270

    div-float v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    div-int/lit8 v20, v17, 0x2

    sub-int v20, v16, v20

    div-int/lit8 v21, v19, 0x2

    sub-int v21, v18, v21

    div-int/lit8 v22, v17, 0x2

    add-int v22, v22, v16

    div-int/lit8 v23, v19, 0x2

    add-int v23, v23, v18

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void

    :cond_5
    const/4 v9, 0x1

    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v13

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    if-eqz v5, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    iget v8, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    :cond_0
    if-eqz v3, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialHeight:I

    if-ge v4, v7, :cond_1

    int-to-float v7, v4

    iget v8, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v1, v7, v8

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v7, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/android/systemui/statusbar/policy/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/android/systemui/statusbar/policy/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/AnalogClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AnalogClock;->mChanged:Z

    return-void
.end method
