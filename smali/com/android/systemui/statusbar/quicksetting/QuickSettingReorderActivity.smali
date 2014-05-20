.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;
.super Landroid/app/Activity;
.source "QuickSettingReorderActivity.java"


# static fields
.field private static final QS_DEFAULT_ALL:[I

.field private static qs_available:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final TAG_DRAG:Ljava/lang/String;

.field private actionExt:Lcom/htc/widget/ActionBarExt;

.field private actionText:Lcom/htc/widget/ActionBarText;

.field private footerCancel1:Lcom/htc/widget/HtcFooterButton;

.field private footerCancel2:Lcom/htc/widget/HtcFooterButton;

.field private footerCancelListener:Landroid/view/View$OnClickListener;

.field private footerDone:Lcom/htc/widget/HtcFooterButton;

.field private footerDoneListener:Landroid/view/View$OnClickListener;

.field private htcFontscale:F

.field private htcThemeID:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;

.field private mToastRunnable:Ljava/lang/Runnable;

.field private orientation:I

.field private qs_combine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qs_invisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qs_visible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recreateRunnable:Ljava/lang/Runnable;

.field private reorderAdapter:Landroid/widget/BaseAdapter;

.field private reorderDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private reorderList:Lcom/htc/widget/HtcReorderListView;

.field private separatorIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->QS_DEFAULT_ALL:[I

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->QS_DEFAULT_ALL:[I

    .line 405
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const-string v0, "QuickSettingReorder"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, "QuickSettingReorder.DRAG"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->TAG_DRAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    .line 54
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionExt:Lcom/htc/widget/ActionBarExt;

    .line 55
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    .line 57
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    .line 58
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    .line 59
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    .line 61
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    .line 67
    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    .line 119
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 206
    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->orientation:I

    .line 221
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    .line 407
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    .line 408
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    .line 413
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    .line 474
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    .line 621
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 695
    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;

    .line 696
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;

    .line 752
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancelListener:Landroid/view/View$OnClickListener;

    .line 773
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDoneListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterContent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method private refreshAllContentList()V
    .locals 15

    .prologue
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 239
    .local v9, startTime:J
    const-string v11, "QuickSettingReorder"

    const-string v12, "---------------------------------------------------------------------------------------"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v6, 0x0

    .line 245
    .local v6, needRefresh:Z
    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-nez v11, :cond_0

    .line 247
    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getQSAvailableList()[I

    move-result-object v11

    sput-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    .line 248
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "refreshQSAvailable(acc):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v11, v11

    if-eqz v11, :cond_3

    .line 255
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "quick_setting_items_order"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, read_string:Ljava/lang/String;
    :try_start_0
    const-string v11, "\\["

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\]"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, contents:[Ljava/lang/String;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    .line 263
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    .line 266
    const/4 v5, 0x0

    .local v5, loop:I
    array-length v8, v0

    .local v8, size:I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 267
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    aget-object v12, v0, v5

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 269
    .end local v0           #contents:[Ljava/lang/String;
    .end local v5           #loop:I
    .end local v8           #size:I
    :catch_0
    move-exception v3

    .line 272
    .local v3, exception:Ljava/lang/Exception;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    .line 273
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!!!convert visible content list fail:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v3           #exception:Ljava/lang/Exception;
    :cond_1
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "refreshQSVisible(convert):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v7           #read_string:Ljava/lang/String;
    :goto_1
    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v11, :cond_8

    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v11, v11

    if-eqz v11, :cond_8

    .line 285
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "quick_setting_items_order_invisible"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 287
    .restart local v7       #read_string:Ljava/lang/String;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 288
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 290
    if-nez v7, :cond_6

    .line 293
    const/4 v5, 0x0

    .restart local v5       #loop:I
    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v8, v11

    .restart local v8       #size:I
    :goto_2
    if-ge v5, v8, :cond_4

    .line 295
    sget-object v11, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v11, v11, v5

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->validToAddInvisibleList(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 296
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    sget-object v12, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v12, v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 279
    .end local v5           #loop:I
    .end local v7           #read_string:Ljava/lang/String;
    .end local v8           #size:I
    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    goto :goto_1

    .line 299
    .restart local v5       #loop:I
    .restart local v7       #read_string:Ljava/lang/String;
    .restart local v8       #size:I
    :cond_4
    const-string v11, "QuickSettingReorder"

    const-string v12, "refreshQSInvisible(save)"

    const-string v13, "quick_setting_items_order_invisible"

    iget-object v14, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {p0, v11, v12, v13, v14}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 331
    .end local v5           #loop:I
    .end local v8           #size:I
    :cond_5
    :goto_3
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "refreshQSInvisible(convert):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v7           #read_string:Ljava/lang/String;
    :goto_4
    const-string v11, "QuickSettingReorder"

    const-string v12, "---------------------------------------------------------------------------------------"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->verifyQSInvisibleItemList(Z)V

    .line 344
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    .line 346
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    .line 347
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    .line 349
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    .line 352
    const/4 v5, 0x0

    .restart local v5       #loop:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .restart local v8       #size:I
    :goto_5
    if-ge v5, v8, :cond_9

    .line 353
    iget-object v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v13, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 307
    .end local v5           #loop:I
    .end local v8           #size:I
    .restart local v7       #read_string:Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v11, "\\["

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\]"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0       #contents:[Ljava/lang/String;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 310
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 314
    const/4 v5, 0x0

    .restart local v5       #loop:I
    array-length v8, v0

    .restart local v8       #size:I
    :goto_6
    if-ge v5, v8, :cond_5

    .line 316
    aget-object v11, v0, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 318
    .local v4, item_index:I
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->validToAddInvisibleList2(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 319
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 321
    :cond_7
    const/4 v6, 0x1

    goto :goto_7

    .line 324
    .end local v0           #contents:[Ljava/lang/String;
    .end local v4           #item_index:I
    .end local v5           #loop:I
    .end local v8           #size:I
    :catch_1
    move-exception v3

    .line 326
    .restart local v3       #exception:Ljava/lang/Exception;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 327
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!!!!convert invisible content list fail:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 334
    .end local v3           #exception:Ljava/lang/Exception;
    .end local v7           #read_string:Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    goto/16 :goto_4

    .line 356
    .restart local v5       #loop:I
    .restart local v8       #size:I
    :cond_9
    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Integer;

    const/4 v13, -0x1

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_8
    if-ge v5, v8, :cond_a

    .line 360
    iget-object v12, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v13, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 362
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v1, v11, v9

    .line 364
    .local v1, elapse:J
    const-string v11, "QuickSettingReorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "combineContentList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v1           #elapse:J
    .end local v5           #loop:I
    .end local v8           #size:I
    :goto_9
    return-void

    .line 367
    :cond_b
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method private refreshReorderList()V
    .locals 6

    .prologue
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 443
    .local v0, startTime:J
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setAllItemFocusable(Z)V

    .line 447
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    new-instance v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setDividerController(Lcom/htc/widget/IDividerController;)V

    .line 464
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterContent()V

    .line 466
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 467
    const-string v2, "QuickSettingReorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshReorderList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFooterCancelVisible(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    if-nez v0, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFooterContent()V
    .locals 6

    .prologue
    .line 714
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    if-nez v3, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 719
    .local v2, orientation:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, cntText:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2040165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, btnText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterCancelVisible(I)V

    goto :goto_0

    .line 723
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private validToAddInvisibleList(I)Z
    .locals 3
    .parameter "item_index"

    .prologue
    const/4 v0, 0x1

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validToAddInvisibleList2(I)Z
    .locals 4
    .parameter "item_index"

    .prologue
    const/4 v2, 0x0

    .line 426
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v3, v3

    if-nez v3, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v2

    .line 429
    :cond_1
    const/4 v0, 0x0

    .local v0, loop:I
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v1, v3

    .local v1, size:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 430
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 431
    const/4 v2, 0x1

    goto :goto_0

    .line 429
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private verifyQSInvisibleItemList(Z)V
    .locals 9
    .parameter "_needRefresh"

    .prologue
    const/4 v8, 0x1

    .line 373
    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const/4 v2, 0x0

    .line 381
    .local v2, needRefresh:Z
    const/4 v1, 0x0

    .local v1, loop:I
    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    array-length v3, v4

    .local v3, size:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 383
    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_available:[I

    aget v0, v4, v1

    .line 386
    .local v0, item_index:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 389
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const/4 v2, 0x1

    .line 381
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    .end local v0           #item_index:I
    :cond_3
    if-eq p1, v8, :cond_4

    if-ne v2, v8, :cond_5

    .line 396
    :cond_4
    const-string v4, "QuickSettingReorder"

    const-string v5, "verifyQSInvisibleItemList(save)"

    const-string v6, "quick_setting_items_order_invisible"

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 399
    :cond_5
    const-string v4, "QuickSettingReorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyQSInvisibleItemList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eq p1, v8, :cond_6

    if-ne v2, v8, :cond_0

    .line 402
    :cond_6
    const-string v4, "QuickSettingReorder"

    const-string v5, "---------------------------------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->orientation:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterContent()V

    .line 217
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->orientation:I

    .line 219
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "bundle"

    .prologue
    const/4 v11, 0x0

    .line 72
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 73
    .local v0, dvm:Ldalvik/system/VMRuntime;
    const-wide/16 v7, 0x2

    invoke-virtual {v0, v7, v8}, Ldalvik/system/VMRuntime;->disableGcInRange(J)V

    .line 76
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 77
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    iput v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    .line 80
    invoke-static {p0, v11}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    .line 81
    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    invoke-virtual {p0, v7}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 89
    .local v3, startTime1:J
    new-instance v7, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionExt:Lcom/htc/widget/ActionBarExt;

    .line 91
    new-instance v7, Lcom/htc/widget/ActionBarText;

    invoke-direct {v7, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    .line 92
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    const v8, 0x7f0a00e3

    invoke-virtual {v7, v8}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 93
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    const v8, 0x7f0a00e4

    invoke-virtual {v7, v8}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 95
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v7}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->actionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v7, v8}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 100
    .local v5, startTime2:J
    const v7, 0x7f04000d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 101
    invoke-virtual {v0, v11}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    .line 103
    const v7, 0x7f070024

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    .line 104
    const v7, 0x7f070023

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    .line 105
    const v7, 0x7f070025

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcFooterButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    .line 107
    const v7, 0x7f070026

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcReorderListView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    .line 108
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v5

    .line 112
    .local v1, elapse:J
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 113
    const-string v7, "QuickSettingReorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v5, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") scale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " theme:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "quick_setting_items_refresh"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 201
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    .line 202
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    .line 203
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 204
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcFontscale:F

    invoke-static {p0, v7}, Lcom/htc/configuration/HtcWrapConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v7

    if-ne v7, v5, :cond_1

    .line 129
    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recreate.htcFontscale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {p0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    .line 137
    .local v0, htcThemeIDLoc:I
    iget v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->htcThemeID:I

    if-eq v7, v0, :cond_2

    .line 139
    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recreate.htcThemeID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "quick_setting_items_refresh"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v1, v5

    .line 147
    .local v1, needReload:Z
    :goto_1
    if-ne v1, v5, :cond_4

    .line 149
    iput-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    .line 150
    iput-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    .line 151
    iput-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "quick_setting_items_refresh"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    const-string v5, "QuickSettingReorder"

    const-string v6, "recreate:cause the data already changed under background!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->recreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v1           #needReload:Z
    :cond_3
    move v1, v6

    .line 144
    goto :goto_1

    .line 161
    .restart local v1       #needReload:Z
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 163
    .local v3, startTime:J
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    if-nez v6, :cond_5

    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 167
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_visible:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_invisible:Ljava/util/ArrayList;

    if-nez v6, :cond_7

    .line 169
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->refreshAllContentList()V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->refreshReorderList()V

    .line 173
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_8

    .line 174
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_9

    .line 177
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    if-eqz v6, :cond_a

    .line 180
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_a
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 185
    .local v2, orientation:I
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterCancelVisible(I)V

    .line 187
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z

    if-ne v6, v5, :cond_0

    .line 188
    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resume:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
