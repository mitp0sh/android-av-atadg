.class public Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static r:I


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field private h:Landroid/app/AlertDialog;

.field private i:Landroid/app/AlertDialog;

.field private j:Landroid/app/AlertDialog;

.field private k:Landroid/app/AlertDialog;

.field private l:Landroid/app/Dialog;

.field private m:Landroid/app/AlertDialog;

.field private n:Landroid/widget/ToggleButton;

.field private o:Landroid/widget/ToggleButton;

.field private p:Ljava/lang/String;

.field private q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    .line 79
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->o:Landroid/widget/ToggleButton;

    .line 84
    const-string v0, "0000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->p:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b:Z

    .line 92
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c:Z

    .line 93
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d:Z

    .line 94
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e:Z

    .line 95
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f:Z

    .line 96
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->g:Z

    .line 765
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->r:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 59
    sput p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->r:I

    return p0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 133
    const v0, 0x7f0b0214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v0, 0x7f0b0216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v0, 0x7f0b0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const v0, 0x7f0b0217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method

.method static synthetic b()I
    .locals 2

    .prologue
    .line 59
    sget v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->r:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->r:I

    return v0
.end method

.method private b(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v0, 0x0

    const v5, 0x7f0d021e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 457
    :goto_0
    return-object v0

    .line 237
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d012c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00fe

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/ad;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ad;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00ff

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/ab;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ab;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d021f

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/q;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/q;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    .line 255
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 256
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    goto :goto_0

    .line 261
    :pswitch_1
    const v2, 0x7f03002e

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 262
    const v0, 0x7f0b0110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 263
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d014b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0240

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/ag;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ag;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/af;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/af;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ae;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ae;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    .line 299
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 300
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 302
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 305
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0141

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0146

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/aj;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ai;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ai;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ah;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ah;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    .line 363
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 366
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 369
    :pswitch_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const v2, 0x7f0d0142

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->k:Landroid/app/AlertDialog;

    .line 372
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->k:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 375
    :pswitch_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 376
    const v2, 0x7f03005b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 378
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    .line 379
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 380
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 382
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 384
    const v0, 0x7f0b0203

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/r;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/r;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    const v0, 0x7f0b027d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->initNumpad(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 397
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 398
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 401
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d02da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02d9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0240

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/t;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/t;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/s;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/s;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    .line 451
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 452
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 454
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->o:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setParentsAppProtectionAnswer(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setParentsAppProtectionCustomQuestion(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setParentsAppProtectionQuestion(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setParentsAppProtectionEmail(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setParentsAppProtectionPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 169
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardTeenagerActive(Z)V

    .line 171
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 173
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const-string v1, "Private"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 175
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    const-string v1, "FINISH_MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 189
    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f070006

    .line 745
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v0

    .line 747
    const-string v1, "1"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 756
    :cond_0
    :goto_0
    return-object v0

    .line 749
    :cond_1
    const-string v1, "2"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 751
    :cond_2
    const-string v1, "3"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 753
    :cond_3
    const-string v1, "4"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->k:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 195
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c:Z

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b(I)Landroid/app/Dialog;

    .line 199
    :cond_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 200
    :cond_1
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 201
    :cond_2
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    :cond_3
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 203
    :cond_4
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 205
    :cond_5
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b:Z

    .line 206
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c:Z

    .line 207
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d:Z

    .line 208
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e:Z

    .line 209
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f:Z

    .line 210
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->g:Z

    .line 211
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 103
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->setHasOptionsMenu(Z)V

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/Configuration;->initializeDatabase(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardInitialized(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 724
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 725
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 119
    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 125
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isTeenagerUiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a(Landroid/view/View;)V

    .line 127
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->setRetainInstance(Z)V

    .line 129
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 217
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b:Z

    .line 218
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c:Z

    .line 219
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d:Z

    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e:Z

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->k:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->g:Z

    .line 222
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_5
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f:Z

    .line 224
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 225
    :cond_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 226
    :cond_1
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 227
    :cond_2
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 228
    :cond_3
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 229
    :cond_4
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 217
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 218
    goto :goto_1

    :cond_8
    move v0, v2

    .line 219
    goto :goto_2

    :cond_9
    move v0, v2

    .line 220
    goto :goto_3

    :cond_a
    move v0, v2

    .line 221
    goto :goto_4

    :cond_b
    move v1, v2

    .line 222
    goto :goto_5
.end method

.method public onHintClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v3

    .line 467
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v4

    .line 468
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionAnswer()Ljava/lang/String;

    move-result-object v5

    .line 470
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 471
    :goto_0
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0102

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 474
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 482
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 470
    goto :goto_0

    :cond_3
    move v1, v2

    .line 471
    goto :goto_1

    .line 475
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 476
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b(I)Landroid/app/Dialog;

    goto :goto_2

    .line 477
    :cond_5
    if-eqz v1, :cond_6

    .line 478
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b(I)Landroid/app/Dialog;

    goto :goto_2

    .line 479
    :cond_6
    if-eqz v0, :cond_1

    .line 480
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b(I)Landroid/app/Dialog;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 729
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 737
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 732
    :pswitch_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 734
    const/4 v0, 0x1

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x461
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 9

    .prologue
    const v8, 0x7f0d02b6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 486
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 488
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 490
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 491
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0217

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 493
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0209

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 494
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b020a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 496
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0b020d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    .line 497
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0b0216

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->o:Landroid/widget/ToggleButton;

    .line 499
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Private"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v4, v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAppProtectionAnswer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 503
    :goto_0
    if-nez v4, :cond_2

    .line 504
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 505
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 506
    const v3, 0x7f0d02ff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 508
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 509
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 511
    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/u;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/u;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/v;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/v;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/w;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/w;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->o:Landroid/widget/ToggleButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/x;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/x;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    :goto_1
    return-void

    :cond_1
    move v4, v6

    .line 499
    goto :goto_0

    .line 540
    :cond_2
    const v4, 0x7f0d0307

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 541
    const v4, 0x7f0d0302

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 543
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v4, v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->p:Ljava/lang/String;

    .line 545
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 546
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->o:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 548
    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 550
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->q:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v4

    if-nez v4, :cond_5

    .line 551
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    const v3, 0x7f0d02fe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 554
    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/y;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/y;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/z;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/z;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    :goto_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 600
    iput-boolean v6, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a:Z

    .line 602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 603
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 605
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 607
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 608
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".activities.kidsguard.KidsGuardHome"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    iput-boolean v5, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a:Z

    goto :goto_4

    :cond_4
    move v4, v6

    .line 548
    goto :goto_2

    .line 594
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    const v0, 0x7f0d0300

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 614
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->n:Landroid/widget/ToggleButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/aa;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/aa;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->o:Landroid/widget/ToggleButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ac;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ac;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method
