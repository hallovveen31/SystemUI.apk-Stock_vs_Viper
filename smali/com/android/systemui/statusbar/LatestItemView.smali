.class public Lcom/android/systemui/statusbar/LatestItemView;
.super Landroid/widget/FrameLayout;
.source "LatestItemView.java"


# static fields
.field private static focusDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected draw_color:Z

.field private gainFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/LatestItemView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->gainFocus:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->draw_color:Z

    .line 42
    return-void
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1
    .parameter "_enable"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->draw_color:Z

    if-eq v0, p1, :cond_0

    .line 138
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LatestItemView;->draw_color:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->postInvalidate()V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 92
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->gainFocus:Z

    if-ne v0, v5, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/LatestItemView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/systemui/statusbar/LatestItemView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    sget-object v0, Lcom/android/systemui/statusbar/LatestItemView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemView;->draw_color:Z

    if-ne v0, v5, :cond_1

    .line 103
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 104
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "_gainFocus"
    .parameter "_direction"
    .parameter "_prevFocusRect"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LatestItemView;->gainFocus:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->invalidate()V

    .line 79
    sget-object v1, Lcom/android/systemui/statusbar/LatestItemView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LatestItemView;->gainFocus:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x208012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/LatestItemView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    sget-object v1, Lcom/android/systemui/statusbar/LatestItemView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x2060003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 87
    .end local v0           #resource:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 55
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 58
    const/4 v1, 0x1

    .line 60
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->setColorSelectorEnable(Z)V

    .line 160
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 148
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/LatestItemView;->setColorSelectorEnable(Z)V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/LatestItemView;->setColorSelectorEnable(Z)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
