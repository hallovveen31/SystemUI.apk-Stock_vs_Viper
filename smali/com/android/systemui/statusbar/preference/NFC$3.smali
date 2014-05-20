.class Lcom/android/systemui/statusbar/preference/NFC$3;
.super Ljava/lang/Object;
.source "NFC.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/NFC$3;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC$3;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/NFC;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/NFC$3;->toggleSettings()V

    const/4 v0, 0x1

    return v0
.end method

.method public toggleSettings()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NFC$3;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/NFC$3;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    #getter for: Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/NFC;->access$2(Lcom/android/systemui/statusbar/preference/NFC;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/preference/NFC;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
