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

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentsGridView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v8, 0x9

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->MAX_NUM_TASKS:I

    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mThumbBkgWithoutContent:Landroid/graphics/drawable/Drawable;

    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isAllThumbnailShowed:Z

    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isNoRecentTask:Z

    iput-boolean v9, p0, Lcom/android/systemui/recent/RecentsGridView;->isItemDisabled:Z

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemWidth:I

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemHeight:I

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewLeft:I

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewTop:I

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mWidthRemainder:I

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mHeightRemainder:I

    iput v9, p0, Lcom/android/systemui/recent/RecentsGridView;->mOrientation:I

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iput-object v10, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->density:F

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v8

    int-to-float v5, v8

    new-instance v8, Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-direct {v8, v11, p0, v1, v5}, Lcom/android/systemui/recent/RecentSwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    new-instance v8, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-direct {v8, p0, p0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;-><init>(Lcom/android/systemui/recent/RecentsGridView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f02008a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mThumbBkgWithoutContent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mOrientation:I

    const v8, 0x7f0c0073

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int v4, v8, v0

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int v3, v8, v0

    rem-int/lit8 v8, v4, 0x3

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mWidthRemainder:I

    rem-int/lit8 v8, v3, 0x3

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mHeightRemainder:I

    iget v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mOrientation:I

    if-ne v8, v11, :cond_1

    const v8, 0x7f0c0067

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemWidth:I

    const v8, 0x7f0c0068

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemHeight:I

    :goto_0
    iget v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    neg-int v8, v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewLeft:I

    iget v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mNoContentPadding:I

    neg-int v8, v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mGridViewTop:I

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    const v8, 0x208012b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const v10, 0x2060003

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void

    :cond_1
    const v8, 0x7f0c0063

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemWidth:I

    const v8, 0x7f0c0064

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentsGridView;->mItemHeight:I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recent/RecentsGridView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsGridView;)Lcom/android/systemui/recent/RecentSwipeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    return-object v0
.end method

.method private handleOnClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isItemDisabled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->setAfterDelPositionList()V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->playReArrangeAnimation()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

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

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

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

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getChildAtPosition(FF)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

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

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsGridView;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f070041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isClicking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsGridView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentSwipeHelper;->setIsDismissingChild(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isRearangeNeeded:Z

    goto :goto_0
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/RecentSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsGridView;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsGridView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrAnimView:Landroid/view/View;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsGridView;->handleOnClick(Landroid/view/View;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurFocusRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recent/RecentsGridView;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v2, v0}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentSwipeHelper;->isDismissingChild()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isClicking:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/RecentSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsGridView;->isDragging:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsGridView;->handleOnClick(Landroid/view/View;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAllThumbnailShowed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isAllThumbnailShowed:Z

    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsGridView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-void
.end method

.method public setDelPositionsList(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView;->mReArrangeHelper:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->setDelPositionsList(I)V

    return-void
.end method

.method public setDisableItems()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView;->isItemDisabled:Z

    return-void
.end method

.method public setNoRecentTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsGridView;->isNoRecentTask:Z

    return-void
.end method
