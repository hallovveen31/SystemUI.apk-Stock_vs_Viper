.class Lcom/android/systemui/statusbar/info/InfoLine$1;
.super Ljava/lang/Object;
.source "InfoLine.java"

# interfaces
.implements Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/info/InfoLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/info/InfoLine;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/info/InfoLine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/InfoLine$1;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconUpdate(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/InfoLine$1;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    #getter for: Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/info/InfoLine;->access$1(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/InfoLine$1;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    #getter for: Lcom/android/systemui/statusbar/info/InfoLine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/info/InfoLine;->access$2(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_infoline_icon_color"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Venom"

    const-string v2, "Setting color..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/InfoLine$1;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    #getter for: Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/info/InfoLine;->access$1(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/InfoLine$1;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    #getter for: Lcom/android/systemui/statusbar/info/InfoLine;->mImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/info/InfoLine;->access$1(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/high16 v3, -0x100

    invoke-direct {v2, v0, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public onSetVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine$1;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/info/InfoLine;->setVisibility(I)V

    return-void
.end method

.method public onTextUpdate(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/InfoLine$1;->this$0:Lcom/android/systemui/statusbar/info/InfoLine;

    #getter for: Lcom/android/systemui/statusbar/info/InfoLine;->mLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/info/InfoLine;->access$0(Lcom/android/systemui/statusbar/info/InfoLine;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
