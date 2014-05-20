.class public Lcom/android/systemui/statusbar/info/InfoLine;
.super Landroid/widget/RelativeLayout;
.source "InfoLine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "m0narX_ExtendedInfo"


# instance fields
.field private Cr:Landroid/content/ContentResolver;

.field LayoutHeight:I

.field private mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

.field private mImage:Landroid/widget/ImageView;

.field private mInfoLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/statusbar/info/TextInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLabel:Landroid/widget/TextView;

.field private mMode:I

.field private final mSettings:[Ljava/lang/String;

.field private mTextInfoCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tweaks_extended_statusbartext"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "tweaks_extended_statusbartext_color"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tweaks_extended_statusbartext_showicon"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tweaks_extended_bgcolor"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mSettings:[Ljava/lang/String;

    iput v3, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    new-instance v0, Lcom/android/systemui/statusbar/info/InfoLine$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/info/InfoLine$1;-><init>(Lcom/android/systemui/statusbar/info/InfoLine;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mTextInfoCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tweaks_extended_statusbartext"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "tweaks_extended_statusbartext_color"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tweaks_extended_statusbartext_showicon"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tweaks_extended_bgcolor"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mSettings:[Ljava/lang/String;

    iput v3, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    new-instance v0, Lcom/android/systemui/statusbar/info/InfoLine$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/info/InfoLine$1;-><init>(Lcom/android/systemui/statusbar/info/InfoLine;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mTextInfoCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/info/InfoLine;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mSettings:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public UpdateSettings()V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_extended_statusbartext"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mMode:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_extended_statusbartext_showicon"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mMode:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/info/TextInfo;->onStop()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/info/InfoLine;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/info/InfoLine;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v8, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/info/InfoLine;->setTextColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/info/InfoLine;->setCustomText()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public cancelRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->onStop()V

    const-string v0, "m0narX_ExtendedInfo"

    const-string v1, "Disable refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public init()V
    .locals 13

    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/WiFiInfo;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/BatteryInfo;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/RAMInfo;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/SDInfo;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/CPUState;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/CPUUsage;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/CPUFreq;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/android/systemui/statusbar/info/TrafficInfo;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->Cr:Landroid/content/ContentResolver;

    const/high16 v5, 0x4180

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/info/InfoLine;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v9, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    const/high16 v6, 0x4140

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    const v6, -0x80809

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    const v6, 0x8865a0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;

    const v6, 0x12dc9b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->LayoutHeight:I

    invoke-direct {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x4040

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/info/InfoLine;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v9, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v0, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/android/systemui/statusbar/widget/DividerView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/systemui/statusbar/widget/DividerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/widget/DividerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/info/InfoLine;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/info/InfoLine;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/info/InfoLine;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/android/systemui/statusbar/info/InfoLine$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/info/InfoLine$2;-><init>(Lcom/android/systemui/statusbar/info/InfoLine;Landroid/os/Handler;)V

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/systemui/statusbar/info/InfoLine$3;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/statusbar/info/InfoLine$3;-><init>(Lcom/android/systemui/statusbar/info/InfoLine;Landroid/database/ContentObserver;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/info/InfoLine;->UpdateSettings()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-string v0, "m0narX_ExtendedInfo"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-string v0, "m0narX_ExtendedInfo"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/info/InfoLine;->init()V

    return-void
.end method

.method public setCustomText()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    iget v2, v2, Lcom/android/systemui/statusbar/info/TextInfo;->ID:I

    iget v3, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mMode:I

    if-eq v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/info/TextInfo;->onStop()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mInfoLines:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mTextInfoCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/info/TextInfo;

    iput-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    iget v3, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mMode:I

    iput v3, v2, Lcom/android/systemui/statusbar/info/TextInfo;->ID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTextColor()V
    .locals 5

    const/4 v4, -0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_extended_statusbartext_color"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/info/InfoLine;->Cr:Landroid/content/ContentResolver;

    const-string v3, "tweaks_extended_bgcolor"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/info/InfoLine;->setBackgroundColor(I)V

    return-void
.end method

.method public startRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine;->mActiveInfo:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->onStart()V

    const-string v0, "m0narX_ExtendedInfo"

    const-string v1, "Start refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
