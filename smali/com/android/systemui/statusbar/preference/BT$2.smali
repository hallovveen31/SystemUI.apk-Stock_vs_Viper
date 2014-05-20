.class Lcom/android/systemui/statusbar/preference/BT$2;
.super Ljava/lang/Object;
.source "BT.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/BT;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/BT;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/BT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/BT;->collapseStatusBar()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/BT;->toggleSettings()V

    const/4 v0, 0x1

    return v0
.end method
