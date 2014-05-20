.class Lcom/android/systemui/statusbar/preference/NFC$2;
.super Ljava/lang/Object;
.source "NFC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/NFC;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/NFC;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/NFC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/NFC$2;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NFC$2;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/NFC$2;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/NFC;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/systemui/statusbar/preference/NFC;->setNFCState(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/NFC;->access$1(Lcom/android/systemui/statusbar/preference/NFC;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
