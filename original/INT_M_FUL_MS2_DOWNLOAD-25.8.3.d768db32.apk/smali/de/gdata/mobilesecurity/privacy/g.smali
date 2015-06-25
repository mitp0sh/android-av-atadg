.class Lde/gdata/mobilesecurity/privacy/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/g;->a:Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->cancelHide()V

    .line 34
    return-void
.end method
