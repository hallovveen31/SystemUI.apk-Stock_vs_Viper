.class public Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "HtcGenericSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mFemtocell:Landroid/widget/ImageView;

.field private mFemtocellIconId:I

.field private mFemtocellVisible:Z

.field private mIsAirplaneMode:Z

.field mMobile:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileStrengthId:I

.field private mMobileVisible:Z

.field private mOpName:Landroid/view/View;

.field mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

.field private mPhoneSignalDescription:Ljava/lang/String;

.field private mPhoneSignalIconId:I

.field private mPhoneSignalIconIdRight:I

.field private mPhoneSignalVisible:Z

.field mSimCard:Landroid/widget/ImageView;

.field private mSimCardIconId:I

.field private mSimCardVisible:Z

.field private mSprintLteText:Landroid/view/View;

.field private mTheming:Lcom/android/systemui/statusbar/theming/VenomClusterTheming;

.field mWifi:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiStrengthId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileStrengthId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconIdRight:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mIsAirplaneMode:Z

    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplaneIconId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardIconId:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellIconId:I

    new-instance v0, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mTheming:Lcom/android/systemui/statusbar/theming/VenomClusterTheming;

    return-void
.end method

.method private apply()V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v3, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mTheming:Lcom/android/systemui/statusbar/theming/VenomClusterTheming;

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v9}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateWifiVisibility(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->setIcon(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardVisible:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardIconId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->setIcon(Landroid/widget/ImageView;I)V

    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mIsAirplaneMode:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalVisible:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v3, v5, v9}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateSignalVisibility(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    iget v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconIdRight:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->setIcon(Lcom/android/systemui/statusbar/widget/SignalBarView;II)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v5, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v9}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateDataVisibility(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->setIcon(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v5, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_2

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellVisible:Z

    if-eqz v5, :cond_8

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v8}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateWifiVisibility(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v8}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateDataVisibility(Landroid/widget/ImageView;I)V

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v3, v5, v8}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateSignalVisibility(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v8}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->updateDataVisibility(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/theming/VenomClusterTheming;->setIcon(Landroid/widget/ImageView;I)V

    goto :goto_5

    :cond_8
    const/16 v0, 0x8

    goto :goto_6
.end method


# virtual methods
.method public batchApply()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->apply()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/SignalBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->apply()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setFemtocellIcon(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellIconId:I

    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mIsAirplaneMode:Z

    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplaneIconId:I

    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileStrengthId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileDescription:Ljava/lang/String;

    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    return-void
.end method

.method public setOpNameVisibility(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPhoneSignalIcon(ZIILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconId:I

    iput p3, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconIdRight:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalDescription:Ljava/lang/String;

    return-void
.end method

.method public setSimCardIcon(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardIconId:I

    return-void
.end method

.method public setSprintLteTextVisibility(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiStrengthId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiDescription:Ljava/lang/String;

    return-void
.end method
