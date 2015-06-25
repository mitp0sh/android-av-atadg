.class public Lde/gdata/mobilesecurity/util/MyUtil$SingleToast;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 2132
    sget-object v0, Lde/gdata/mobilesecurity/util/MyUtil$SingleToast;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/util/MyUtil$SingleToast;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2133
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/util/MyUtil$SingleToast;->a:Landroid/widget/Toast;

    .line 2134
    sget-object v0, Lde/gdata/mobilesecurity/util/MyUtil$SingleToast;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2135
    return-void
.end method
