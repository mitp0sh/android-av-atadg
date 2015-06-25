.class Lcom/google/i18n/phonenumbers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic d:J

.field final synthetic e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 1

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/f;->e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p2, p0, Lcom/google/i18n/phonenumbers/f;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/i18n/phonenumbers/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/i18n/phonenumbers/f;->c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iput-wide p5, p0, Lcom/google/i18n/phonenumbers/f;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2834
    new-instance v1, Lcom/google/i18n/phonenumbers/b;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/f;->e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/f;->a:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/i18n/phonenumbers/f;->c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-wide v6, p0, Lcom/google/i18n/phonenumbers/f;->d:J

    invoke-direct/range {v1 .. v7}, Lcom/google/i18n/phonenumbers/b;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v1
.end method
