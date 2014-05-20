.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mDoubleTapGesture:Landroid/view/GestureDetector;

.field public mFadeEnabled:Z

.field mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mFullWidthNotifications:Z

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mScrimColor:I

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mSettingsPanelDragzoneFrac:F

.field mSettingsPanelDragzoneMin:F

.field private mShouldFade:Z

.field private qsContainer:Landroid/view/ViewGroup;

.field private qsContainer2:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v2, "PhoneStatusBarView"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->qsContainer:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->qsContainer2:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    const v2, 0x7f0c003a

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadeEnabled:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDoubleTapGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    const v2, 0x7f070070

    if-ne v1, v2, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    const v2, 0x7f07001e

    if-ne v1, v2, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public hasFullWidthNotifications()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    return v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisibleSoon()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->supportHWNav:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showQuickTipsEdit()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showQuickTipsMore()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->acquireFocus()V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onPanelFullyOpened()V

    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v4, :cond_0

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x8caa

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_statusbar_doubletap"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDoubleTapGesture:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    if-nez v1, :cond_2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 23

    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadeEnabled:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    if-eqz v11, :cond_0

    const v11, 0x3f99999a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelExpandedFractionSum:F

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccd

    sub-float v7, v11, v12

    const/4 v11, 0x0

    cmpg-float v11, v7, v11

    if-gtz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v12

    int-to-float v12, v12

    add-float v4, v11, v12

    const/high16 v5, 0x3f80

    mul-int/lit8 v11, v8, 0x2

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_1

    int-to-float v11, v8

    cmpg-float v11, v4, v11

    if-gez v11, :cond_4

    const/4 v6, 0x0

    :goto_1
    mul-float v5, v6, v6

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getAlpha()F

    move-result v11

    cmpl-float v11, v11, v5

    if-eqz v11, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    :cond_2
    const/high16 v11, 0x3f80

    cmpl-float v11, v5, v11

    if-eqz v11, :cond_5

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_6

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    invoke-virtual {v10, v2, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateHeadsUp(ZF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    return-void

    :cond_3
    const-wide/high16 v11, 0x3ff0

    const-wide/high16 v13, 0x3fe0

    const-wide/high16 v15, 0x3ff0

    const-wide v17, 0x400921fa00000000L

    const/high16 v19, 0x3f80

    sub-float v19, v19, v7

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    sub-double v15, v15, v17

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    double-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    ushr-int/lit8 v12, v12, 0x18

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    shl-int/lit8 v11, v11, 0x18

    const v12, 0xffffff

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    and-int/2addr v12, v13

    or-int v9, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_4
    int-to-float v11, v8

    sub-float v11, v4, v11

    int-to-float v12, v8

    div-float v6, v11, v12

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x4

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public panelsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isLayoutRtl()Z

    move-result v0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v6, :cond_0

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    add-float/2addr v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getMeasuredWidth()I

    move-result v6

    int-to-float v2, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    mul-float v3, v2, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    :cond_3
    if-eqz v0, :cond_5

    cmpl-float v6, v1, v3

    if-ltz v6, :cond_4

    const/4 v5, 0x0

    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    :cond_5
    sub-float v6, v2, v3

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
