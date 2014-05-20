.class Lcom/android/systemui/statusbar/phone/QuickLauncher$2;
.super Ljava/lang/Object;
.source "QuickLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickLauncher;->getAppButton(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

.field private final synthetic val$activity:Ljava/lang/String;

.field private final synthetic val$pack:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickLauncher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;->val$pack:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;->val$activity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickLauncher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;->val$pack:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickLauncher$2;->val$activity:Ljava/lang/String;

    #calls: Lcom/android/systemui/statusbar/phone/QuickLauncher;->launchApp(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickLauncher;->access$3(Lcom/android/systemui/statusbar/phone/QuickLauncher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
