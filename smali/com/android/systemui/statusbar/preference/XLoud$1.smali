.class Lcom/android/systemui/statusbar/preference/XLoud$1;
.super Ljava/lang/Object;
.source "XLoud.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/XLoud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/XLoud;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/XLoud;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/XLoud$1;->this$0:Lcom/android/systemui/statusbar/preference/XLoud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/XLoud$1;->this$0:Lcom/android/systemui/statusbar/preference/XLoud;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/XLoud$1;->this$0:Lcom/android/systemui/statusbar/preference/XLoud;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/XLoud;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/android/systemui/statusbar/preference/XLoud;->setXLoud(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/XLoud;->access$0(Lcom/android/systemui/statusbar/preference/XLoud;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
