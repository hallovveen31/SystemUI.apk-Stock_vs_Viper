.class Lcom/android/systemui/statusbar/preference/Volume$1;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/Volume;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/android/systemui/statusbar/preference/Volume;

.field final synthetic this$0$:Lcom/android/systemui/statusbar/preference/Volume;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Volume;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    #getter for: Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/preference/Volume;->access$0(Lcom/android/systemui/statusbar/preference/Volume;)I

    move-result v0

    const/4 v6, 0x6

    if-eq v0, v6, :cond_0

    add-int/lit8 v2, v0, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    #setter for: Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I
    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/preference/Volume;->access$1(Lcom/android/systemui/statusbar/preference/Volume;I)V

    sget-object v6, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v4, v6, v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v6, v6, Lcom/android/systemui/statusbar/preference/Volume;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v1, v6, Lcom/android/systemui/statusbar/preference/Volume;->mIcon:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_ICONS:[I

    aget v3, v6, v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/preference/Volume;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/preference/Volume;->onStop()V

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/preference/Volume;->onStart()V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Volume;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Volume$1;->toggleSettings()V

    const/4 v0, 0x1

    return v0
.end method

.method public toggleSettings()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v0, v2, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SOUND_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0$:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/preference/Volume;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
