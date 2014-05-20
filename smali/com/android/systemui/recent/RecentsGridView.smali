.class public Lcom/android/systemui/recent/RecentsGridView;
.super Landroid/widget/GridView;
.source "RecentsGridView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final MAX_NUM_TASKS:I

.field private displaySize:Landroid/graphics/Point;

.field private isAllThumbnailShowed:Z

.field private isClicking:Z

.field private isDragging:Z

.field private isItemDisabled:Z

.field private isNoRecentTask:Z

.field private isRearangeNeeded:Z

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mCurFocusRect:Landroid/graphics/Rect;

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mGridViewLeft:I

.field private mGridViewTop:I

.field private mHeightRemainder:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mNoContentPadding:I

.field private mOrientation:I

.field private mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

.field private mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mThumbBkgWithoutContent:Landroid/graphics/drawable/Drawable;

.field private mWidthRemainder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentsGridView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/16 v8, 0x9

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->MAX_NUM_TASKS:I

    .line 59
    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    .line 60
    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    .line 65
    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mThumbBkgWithoutContent:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    .line 68
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    .line 69
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    .line 70
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isAllThumbnailShowed:Z

    .line 71
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isNoRecentTask:Z

    .line 72
    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isItemDisabled:Z

    .line 74
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemWidth:I

    .line 75
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemHeight:I

    .line 76
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    .line 77
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewLeft:I

    .line 78
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewTop:I

    .line 80
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mWidthRemainder:I

    .line 81
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mHeightRemainder:I

    .line 83
    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mOrientation:I

    .line 85
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    .line 86
    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    .line 88
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->density:F

    .line 102
    .local v1, densityScale:F
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v8

    int-to-float v5, v8

    .line 103
    .local v5, pagingTouchSlop:F
    new-instance v8, Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-direct {v8, v11, p0, v1, v5}, Lcom/android/systemui/recent/RecentSwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    .line 104
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/recent/RecentSwipeHelper;->setMinAlpha(F)V

    .line 105
    new-instance v8, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-direct {v8, p0, p0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;-><init>(Lcom/android/systemui/recent/RecentsGridView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 110
    .local v6, resource:Landroid/content/res/Resources;
    const v8, 0x7f02008a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mThumbBkgWithoutContent:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mOrientation:I

    .line 112
    const v8, 0x7f0c0073

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 113
    .local v0, GridViewGap:I
    div-int/lit8 v8, v0, 0x2

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    .line 115
    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 116
    .local v7, wm:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 118
    .local v2, display:Landroid/view/Display;
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 119
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int v4, v8, v0

    .line 120
    .local v4, gridWidth:I
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int v3, v8, v0

    .line 121
    .local v3, gridHeight:I
    rem-int/lit8 v8, v4, 0x3

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mWidthRemainder:I

    .line 122
    rem-int/lit8 v8, v3, 0x3

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mHeightRemainder:I

    .line 124
    iget v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mOrientation:I

    if-ne v8, v11, :cond_1

    .line 125
    const v8, 0x7f0c0067

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemWidth:I

    .line 126
    const v8, 0x7f0c0068

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemHeight:I

    .line 132
    :goto_0
    iget v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    neg-int v8, v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewLeft:I

    .line 133
    iget v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    neg-int v8, v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewTop:I

    .line 136
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 138
    const v8, 0x208012b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const v10, 0x2060003

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 142
    :cond_0
    return-void

    .line 128
    :cond_1
    const v8, 0x7f0c0063

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemWidth:I

    .line 129
    const v8, 0x7f0c0064

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemHeight:I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/systemui/recent/RecentsGridView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsGridView;)Lcom/android/systemui/recent/RecentSwipeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    return-object v0
.end method

.method private handleOnClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isItemDisabled:Z

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    if-eqz v1, :cond_0

    .line 314
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    .line 315
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->setAfterDelPositionList()V

    .line 316
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->playReArrangeAnimation()V

    .line 318
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 330
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_4

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_5

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    :goto_4
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 330
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsGridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getChildAtPosition(FF)Landroid/view/View;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 186
    .end local v1           #item:Landroid/view/View;
    :goto_1
    return-object v1

    .line 178
    .restart local v1       #item:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1           #item:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4
    .parameter "ev"

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 192
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 193
    .local v1, y:F
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsGridView;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "v"

    .prologue
    .line 198
    const v0, 0x7f070041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isClicking()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsGridView;->requestDisallowInterceptTouchEvent(Z)V

    .line 209
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    .line 210
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsGridView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, contentView:Landroid/view/View;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 219
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentSwipeHelper;->setIsDismissingChild(Z)V

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    goto :goto_0
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 227
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    .local v0, action:I
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    const/4 v1, 0x1

    .line 262
    :goto_0
    return v1

    .line 236
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/RecentSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 238
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsGridView;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsGridView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrAnimView:Landroid/view/View;

    goto :goto_1

    .line 248
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 249
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsGridView;->handleOnClick(Landroid/view/View;)V

    goto :goto_1

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 292
    sparse-switch p1, :sswitch_data_0

    .line 308
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 295
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recent/RecentsGridView;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsGridView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v2, v0}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 269
    .local v0, action:I
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    if-eqz v1, :cond_1

    .line 270
    :cond_0
    const/4 v1, 0x1

    .line 287
    :goto_0
    return v1

    .line 272
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/RecentSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 274
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 280
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 281
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsGridView;->handleOnClick(Landroid/view/View;)V

    goto :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllThumbnailShowed()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isAllThumbnailShowed:Z

    .line 159
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 155
    return-void
.end method

.method public setDelPositionsList(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->setDelPositionsList(I)V

    .line 163
    return-void
.end method

.method public setDisableItems()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isItemDisabled:Z

    .line 171
    return-void
.end method

.method public setNoRecentTask(Z)V
    .locals 0
    .parameter "noRecent"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsGridView;->isNoRecentTask:Z

    .line 167
    return-void
.end method
