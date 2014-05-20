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

.field mWifi:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    .line 44
    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiStrengthId:I

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileStrengthId:I

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalVisible:Z

    .line 50
    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconId:I

    .line 51
    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconIdRight:I

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mIsAirplaneMode:Z

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplaneIconId:I

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardVisible:Z

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardIconId:I

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellVisible:Z

    .line 73
    iput v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellIconId:I

    .line 85
    return-void
.end method

.method private apply()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardVisible:Z

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardIconId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mIsAirplaneMode:Z

    if-nez v1, :cond_7

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalVisible:Z

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    iget v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconIdRight:I

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setImageResource(II)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 182
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 187
    :cond_1
    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 193
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 198
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellVisible:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 184
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setVisibility(I)V

    goto :goto_3

    .line 195
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 200
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_8
    move v1, v3

    .line 207
    goto :goto_6
.end method


# virtual methods
.method public batchApply()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->apply()V

    .line 249
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 94
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/SignalBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    .line 98
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    .line 100
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    .line 101
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->apply()V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 108
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 109
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 110
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignal:Lcom/android/systemui/statusbar/widget/SignalBarView;

    .line 111
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCard:Landroid/widget/ImageView;

    .line 112
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    .line 113
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    .line 114
    iput-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocell:Landroid/widget/ImageView;

    .line 115
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 116
    return-void
.end method

.method public setFemtocellIcon(ZI)V
    .locals 0
    .parameter "visible"
    .parameter "femtocellIcon"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellVisible:Z

    .line 243
    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mFemtocellIconId:I

    .line 244
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .parameter "is"
    .parameter "airplaneIconId"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mIsAirplaneMode:Z

    .line 137
    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mAirplaneIconId:I

    .line 138
    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileVisible:Z

    .line 130
    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileStrengthId:I

    .line 131
    iput-object p4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 89
    return-void
.end method

.method public setOpNameVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mOpName:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_0
    return-void

    .line 231
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPhoneSignalIcon(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "leftIcon"
    .parameter "rightIcon"
    .parameter "contentDescription"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalVisible:Z

    .line 217
    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconId:I

    .line 218
    iput p3, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalIconIdRight:I

    .line 219
    iput-object p4, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mPhoneSignalDescription:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setSimCardIcon(ZI)V
    .locals 0
    .parameter "visible"
    .parameter "simIcon"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardVisible:Z

    .line 225
    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSimCardIconId:I

    .line 226
    return-void
.end method

.method public setSprintLteTextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mSprintLteText:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_0
    return-void

    .line 237
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "contentDescription"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiVisible:Z

    .line 122
    iput p2, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiStrengthId:I

    .line 123
    iput-object p3, p0, Lcom/android/systemui/statusbar/HtcGenericSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 124
    return-void
.end method
