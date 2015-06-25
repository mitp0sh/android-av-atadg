.class Lde/gdata/mobilesecurity/intents/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/UssdFilter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/UssdFilter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/cg;->b:Lde/gdata/mobilesecurity/intents/UssdFilter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/cg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/cg;->b:Lde/gdata/mobilesecurity/intents/UssdFilter;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/UssdFilter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 85
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/cg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/cg;->b:Lde/gdata/mobilesecurity/intents/UssdFilter;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/UssdFilter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 88
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/cg;->a:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/cg;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method
