.class public Lcom/android/systemui/statusbar/SignalClusterViewDual;
.super Landroid/widget/LinearLayout;
.source "SignalClusterViewDual.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerDual$SignalCluster;


# static fields
.field static final DEBUG:Z


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mContext:Landroid/content/Context;

.field mData:[Landroid/widget/ImageView;

.field private mDataDesc:[Ljava/lang/String;

.field private mDataIcon:[I

.field private mDataVisible:[Z

.field private mIsAirplaneMode:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mSignal:[Landroid/widget/ImageView;

.field private mSignalDesc:[Ljava/lang/String;

.field private mSignalIcon:[I

.field private mSignalVisible:[Z

.field mWifi:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDual;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDual;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiStrengthId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mIsAirplaneMode:Z

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplaneIconId:I

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataVisible:[Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataIcon:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataDesc:[Ljava/lang/String;

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalVisible:[Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalIcon:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalDesc:[Ljava/lang/String;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mContext:Landroid/content/Context;

    return-void
.end method

.method private apply()V
    .locals 8

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiVisible:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiStrengthId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataVisible:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataIcon:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataDesc:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalVisible:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalIcon:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalDesc:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mIsAirplaneMode:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplaneIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterViewDual;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiVisible:Z

    if-eqz v3, :cond_9

    const-string v3, "V,"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiStrengthId:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " air="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mIsAirplaneMode:Z

    if-eqz v3, :cond_a

    const-string v3, "V,"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplaneIconId:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v7, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " data["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataVisible:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_b

    const-string v3, "]=V,"

    :goto_9
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataIcon:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sig["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalVisible:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_c

    const-string v3, "]=V,"

    :goto_a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalIcon:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_9
    const-string v3, "G,"

    goto/16 :goto_6

    :cond_a
    const-string v3, "G,"

    goto :goto_7

    :cond_b
    const-string v3, "]=G,"

    goto :goto_9

    :cond_c
    const-string v3, "]=G,"

    goto :goto_a

    :cond_d
    const-string v3, "SignalClusterView"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "(unknown)"

    goto :goto_0

    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method


# virtual methods
.method public batchApply()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->apply()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataVisible:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalVisible:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplane:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDual;->apply()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifi:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplane:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mData:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataVisible:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataIcon:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignal:[Landroid/widget/ImageView;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalVisible:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalIcon:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public setDataIndicatorsBySlot(IZILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataVisible:[Z

    aput-boolean p2, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataIcon:[I

    aput p3, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mDataDesc:[Ljava/lang/String;

    aput-object p4, v0, p1

    goto :goto_0
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mIsAirplaneMode:Z

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mAirplaneIconId:I

    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-void
.end method

.method public setSignalIndicatorsBySlot(IZILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalVisible:[Z

    aput-boolean p2, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalIcon:[I

    aput p3, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mSignalDesc:[Ljava/lang/String;

    aput-object p4, v0, p1

    goto :goto_0
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiStrengthId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDual;->mWifiDescription:Ljava/lang/String;

    return-void
.end method
