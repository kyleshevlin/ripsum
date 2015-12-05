module Ripsum
  def ripsum(standard, variance)
    lorem = ripsum_library
    text  = []
    min   = standard - (standard * variance)
    max   = standard + (standard * variance)
    lorem_array = lorem.split(' ').shuffle

    random_number = rand(min..max).floor

    1..random_number.times do |i|
      if i == 1
        text << lorem_array[i].capitalize
      else
        text << lorem_array[i]
      end
    end

    return text.join(' ')
  end

  private

  def ripsum_library
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem eaque nostrum, doloribus consequuntur debitis aperiam atque, quasi magni veritatis suscipit deleniti tempora dolorum quae sed, dolorem! Id, nisi provident, iste quod libero ipsum dicta necessitatibus consectetur fugit pariatur molestias dolorum delectus tempora hic? Tempora quod possimus excepturi aperiam laborum. Harum culpa, iure quasi nemo assumenda odit, quidem debitis adipisci, aspernatur quo rem tempore deserunt reprehenderit ducimus sapiente voluptates animi. Nisi dolore praesentium, in non nesciunt distinctio vel deleniti est sequi cupiditate culpa doloribus soluta nihil tempore vitae excepturi aperiam voluptate officia consequuntur enim expedita sunt voluptates dolor, porro. Nam, aperiam ad velit error consectetur vel sint illo quos, dolore similique doloremque quidem consequatur quas fuga praesentium neque iusto natus id ipsam tempore. Maxime ea quidem, dolores nesciunt. Possimus repudiandae saepe ratione recusandae et consequuntur autem cum optio, neque minus beatae. Eum, assumenda. Hic accusamus placeat earum veritatis totam tempore vitae ex nesciunt dignissimos, dicta, tempora quia provident atque exercitationem nobis adipisci. Enim molestiae provident voluptatibus quos natus repellat minus impedit animi! Fuga voluptatem distinctio maiores obcaecati id quos cum excepturi expedita accusamus laboriosam, earum ipsa veniam magnam, quia tempora sit fugiat! Minima blanditiis, eius! Qui veritatis totam adipisci harum quam enim atque asperiores illo, facilis hic alias porro dolorem facere? Minus rerum, similique necessitatibus. Aspernatur asperiores maiores cumque consequatur debitis, molestiae praesentium molestias dolore accusamus! Corporis deleniti cumque perferendis numquam, recusandae. Eos, eius adipisci, et rerum laudantium laborum cum maiores? Illo iste id suscipit, minus quas aut fugit hic unde voluptatum alias nesciunt quisquam delectus, voluptatem molestias animi vel accusamus eligendi. Nihil commodi, laboriosam vero vitae cumque, dolor. Qui omnis ipsam cumque, libero accusantium dolor sed temporibus quis voluptates! Cumque, mollitia, explicabo. Aut mollitia deserunt quia earum ut, rerum, eius eos iste at nam pariatur delectus quod nemo voluptate obcaecati modi ipsa id minima beatae! Sint, possimus tempora labore sequi nihil expedita inventore iste obcaecati, fugiat sit doloremque illum fugit mollitia magni est quasi, culpa dolore ad repellendus. Illum aut nam incidunt architecto vel blanditiis officiis. Amet ut aliquam id voluptatibus ducimus totam corrupti dolor saepe. Laboriosam, facere labore aspernatur expedita dicta ea nisi perferendis tenetur aut eveniet laudantium unde omnis nesciunt magnam, exercitationem suscipit voluptatum fugit. Earum cupiditate aspernatur, unde deserunt repellat aliquid distinctio possimus soluta officia sapiente aliquam placeat reprehenderit nulla totam, animi quos autem iure qui laudantium. Iure blanditiis fugit deleniti nulla necessitatibus labore eveniet, deserunt magni earum fugiat alias delectus natus vel incidunt quia ipsa. Voluptas rerum sapiente, quos incidunt quidem, cupiditate cum, saepe repellendus ad inventore veniam vel aspernatur odio beatae nemo, ipsam facere quaerat quod! Velit fuga aliquam voluptates aut sapiente pariatur nihil iure non dolorem libero consequatur ipsa cupiditate id quae temporibus molestias error, saepe officia incidunt deleniti cumque dicta ipsum? Animi error aliquid vel harum veritatis cupiditate ab voluptatum pariatur dolor id totam facilis cum molestiae doloribus sed sapiente quidem, rem perferendis voluptatem esse enim recusandae, iure tenetur repellendus. Beatae incidunt cupiditate hic, aspernatur et quae voluptatem iure expedita nesciunt ipsum dolores.'
  end
end
