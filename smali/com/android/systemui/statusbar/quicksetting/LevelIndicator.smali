.class public Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
.super Landroid/view/View;
.source "LevelIndicator.java"


# static fields
.field private static contentSpace:I


# instance fields
.field private contentDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private currentLevel:I

.field private intermediateBound:Landroid/graphics/Rect;

.field private intermediateEnable:Z

.field private maximumLevel:I

.field private spaceDrawable:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    iput v4, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    iput v4, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_eqs_indicator_off_color"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "#2c2e2f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_eqs_indicator_on_color"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    :cond_1
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    add-int/lit8 v9, v9, -0x1

    sget v10, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    mul-int/2addr v9, v10

    sub-int v5, v8, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->getMeasuredHeight()I

    move-result v4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-lez v5, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    div-int v6, v5, v8

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    rem-int v7, v5, v8

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    const/4 v1, 0x1

    :goto_1
    if-le v1, v0, :cond_2

    add-int/lit8 v2, v0, 0x1

    :goto_2
    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    if-le v2, v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    add-int v9, v3, v6

    invoke-virtual {v8, v3, v11, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    add-int v8, v3, v6

    sget v9, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    add-int v3, v8, v9

    if-eqz v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    add-int v9, v3, v6

    invoke-virtual {v8, v3, v11, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    if-ne v2, v8, :cond_5

    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->spaceDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateBound:Landroid/graphics/Rect;

    :cond_5
    add-int v8, v3, v6

    sget v9, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentSpace:I

    add-int v3, v8, v9

    if-eqz v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, -0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public onOverlayColorChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getThemeOverlayColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->contentDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->invalidate()V

    return-void
.end method

.method public setIntermediateEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->intermediateEnable:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->postInvalidate()V

    goto :goto_0
.end method

.method public setLevel(II)V
    .locals 1

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    if-eq p2, v0, :cond_2

    :cond_0
    if-le p1, p2, :cond_1

    move p1, p2

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->currentLevel:I

    iput p2, p0, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->maximumLevel:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->postInvalidate()V

    :cond_2
    return-void
.end method
