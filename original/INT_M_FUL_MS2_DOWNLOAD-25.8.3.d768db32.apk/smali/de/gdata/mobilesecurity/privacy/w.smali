.class Lde/gdata/mobilesecurity/privacy/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/w;->a:Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/w;->a:Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/w;->a:Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->a(Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->setResult(Ljava/lang/String;)V

    .line 51
    return-void
.end method
