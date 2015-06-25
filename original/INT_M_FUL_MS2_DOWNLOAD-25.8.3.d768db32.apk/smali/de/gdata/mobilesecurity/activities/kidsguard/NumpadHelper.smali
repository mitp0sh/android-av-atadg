.class public Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/widget/TextView;

.field private static b:Landroid/widget/TextView;

.field public static showDots:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->showDots:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->showDots:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->setDots()V

    .line 105
    return-void
.end method

.method public static initNumpad(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0b027b

    .line 24
    const v0, 0x7f0b026f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0b026e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->b:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0b0235

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bm;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bm;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f0b0273

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bq;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bq;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f0b0274

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/br;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/br;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f0b0275

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bs;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bs;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0b0276

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bt;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bt;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0b0277

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bu;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bu;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0b0278

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bv;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bv;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0b0279

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bw;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bw;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0b027a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bx;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bx;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f0b027c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bn;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bo;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bp;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bp;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 94
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 98
    return-void
.end method

.method public static setDots()V
    .locals 4

    .prologue
    .line 108
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->showDots:Z

    if-eqz v0, :cond_2

    .line 110
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 111
    sget-object v1, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->b:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->b:Landroid/widget/TextView;

    sget-object v1, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
