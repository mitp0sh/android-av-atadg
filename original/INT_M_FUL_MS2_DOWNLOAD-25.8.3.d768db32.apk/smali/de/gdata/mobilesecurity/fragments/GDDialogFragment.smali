.class public Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

.field private static c:Landroid/content/DialogInterface$OnClickListener;

.field private static d:Landroid/content/DialogInterface$OnClickListener;

.field private static e:Landroid/content/DialogInterface$OnClickListener;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:Z

.field private static m:Landroid/content/DialogInterface$OnDismissListener;

.field private static n:Landroid/content/DialogInterface$OnCancelListener;

.field private static o:Landroid/content/DialogInterface$OnKeyListener;

.field private static p:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->f:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->g:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->h:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->i:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->j:Ljava/lang/String;

    .line 31
    sput v1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->k:I

    .line 32
    sput-boolean v1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;
    .locals 13

    .prologue
    .line 127
    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v7, p3

    move-object/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v4/app/DialogFragment;
    .locals 13

    .prologue
    .line 132
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v10, p3

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v4/app/DialogFragment;
    .locals 13

    .prologue
    .line 137
    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;
    .locals 13

    .prologue
    .line 157
    const-string v2, ""

    const-string v4, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Landroid/support/v4/app/DialogFragment;
    .locals 13

    .prologue
    .line 143
    const-string v2, ""

    const-string v4, ""

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    .locals 13

    .prologue
    .line 150
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 13

    .prologue
    const/4 v6, 0x0

    .line 91
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v9, 0x0

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    move-object v10, v6

    move-object v11, v6

    move-object v12, v6

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 13

    .prologue
    .line 117
    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 13

    .prologue
    .line 112
    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 13

    .prologue
    .line 122
    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 13

    .prologue
    .line 107
    const-string v2, ""

    const-string v4, ""

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 13

    .prologue
    .line 96
    const-string v4, ""

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 13

    .prologue
    .line 101
    const-string v4, ""

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v12}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;-><init>()V

    .line 68
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->a:Landroid/app/Activity;

    .line 70
    sput-object p1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->f:Ljava/lang/String;

    .line 71
    sput-object p2, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->g:Ljava/lang/String;

    .line 72
    sput-object p3, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->h:Ljava/lang/String;

    .line 73
    sput-object p4, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->i:Ljava/lang/String;

    .line 74
    sput-object p5, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->j:Ljava/lang/String;

    .line 75
    sput p9, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->k:I

    .line 77
    sput-object p6, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    sput-object p7, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    sput-object p8, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    sput-object p10, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->m:Landroid/content/DialogInterface$OnDismissListener;

    .line 82
    sput-object p11, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 83
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->o:Landroid/content/DialogInterface$OnKeyListener;

    .line 85
    sput-object p12, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    .line 87
    return-object v0
.end method

.method public static setCanceledOnTouchOutside(Z)V
    .locals 0

    .prologue
    .line 197
    sput-boolean p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->l:Z

    .line 198
    return-void
.end method

.method public static setIcon(I)V
    .locals 0

    .prologue
    .line 189
    sput p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->k:I

    .line 190
    return-void
.end method

.method public static setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->g:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public static setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 162
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->j:Ljava/lang/String;

    .line 163
    sput-object p1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 164
    return-void
.end method

.method public static setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 172
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->i:Ljava/lang/String;

    .line 173
    sput-object p1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 174
    return-void
.end method

.method public static setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    .prologue
    .line 177
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->o:Landroid/content/DialogInterface$OnKeyListener;

    .line 178
    return-void
.end method

.method public static setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 167
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->h:Ljava/lang/String;

    .line 168
    sput-object p1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    return-void
.end method

.method public static setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->f:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public static setView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 193
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    .line 194
    return-void
.end method

.method public static setmOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 205
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 206
    return-void
.end method

.method public static setmOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 201
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->m:Landroid/content/DialogInterface$OnDismissListener;

    .line 202
    return-void
.end method


# virtual methods
.method public getMyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setRetainInstance(Z)V

    .line 216
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_a

    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    .line 219
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 229
    :cond_0
    :goto_0
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_3

    .line 236
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->h:Ljava/lang/String;

    sget-object v2, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    :cond_3
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_4

    .line 239
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->j:Ljava/lang/String;

    sget-object v2, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    :cond_4
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->e:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_5

    .line 242
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->i:Ljava/lang/String;

    sget-object v2, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    :cond_5
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->m:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_6

    .line 245
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    :cond_6
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->n:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_7

    .line 248
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    :cond_7
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->o:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_8

    .line 251
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->o:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    :cond_8
    sget v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->k:I

    if-eqz v0, :cond_9

    .line 254
    sget v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->k:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 256
    :cond_9
    sput-object p0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->b:Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    .line 258
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 259
    sget-boolean v1, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->l:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 261
    return-object v0

    .line 220
    :cond_a
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    if-eqz v0, :cond_b

    .line 223
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->b:Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->dismiss()V

    .line 226
    :cond_b
    sget-object v0, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 267
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 268
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;Z)I
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 278
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v0

    return v0
.end method
