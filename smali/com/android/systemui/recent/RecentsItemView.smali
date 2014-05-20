.class public Lcom/android/systemui/recent/RecentsItemView;
.super Landroid/widget/FrameLayout;
.source "RecentsItemView.java"


# instance fields
.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private contentDrawale:Landroid/graphics/drawable/Drawable;

.field private drawRect:Landroid/graphics/Rect;

.field private draw_color:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsItemView;->draw_color:Z

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsItemView;->contentDrawale:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsItemView;->draw_color:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsItemView;->draw_color:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0xff

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->drawRect:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const v3, 0x7f070042

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->drawRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsItemView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->contentDrawale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsItemView;->contentDrawale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsItemView;->draw_color:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x33

    invoke-virtual {p1, v3, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    const v2, -0xdadadb

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v1, 0x7f0201ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsItemView;->contentDrawale:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsItemView;->setColorSelectorEnable(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsItemView;->setColorSelectorEnable(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsItemView;->setColorSelectorEnable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDrawableAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsItemView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
